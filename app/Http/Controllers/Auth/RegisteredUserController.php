<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Providers\RouteServiceProvider;
use Illuminate\Auth\Events\Registered;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rules;
use Carbon\Carbon;
use Session;
use Illuminate\Support\Str;

use Laravel\Socialite\Facades\Socialite;




class RegisteredUserController extends Controller
{
    /**
     * Display the registration view.
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {
        if(get_settings('public_signup') != 1){
            Session::flash('error_message', get_phrase('Public signup not allowed'));
            return redirect()->route('login');
        }
        return view('auth.register');
    }

    /**
     * Handle an incoming registration request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     *
     * @throws \Illuminate\Validation\ValidationException
     */
    public function store(Request $request)
    {
        // return $request->all();
        $request->validate([
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'username' => ['required', 'string', 'max:255'],
            'phone' => ['required', 'numeric'],
            'user_type' => ['required', 'string'],
            'password' => ['required', 'confirmed', Rules\Password::defaults()],
        ]);

        $user = User::create([
            'user_role' => 'general',
            'username' => $request->username,
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'user_type' => $request->user_type,
            'friends' => json_encode(array()),
            'followers' => json_encode(array()),
            'timezone' => $request->timezone,
            'password' => Hash::make($request->password),
            'status' => 0,
            'lastActive' => Carbon::now(),
            'created_at' => time()
        ]);


        event(new Registered($user));

        Auth::login($user);

        return redirect(RouteServiceProvider::HOME);
    }





    public function guest_user(){
        $user_role = "Guest";
        $random_number = rand(1,10);
        $name = "GUEST".$random_number;
        $email = $name.'@gmail.com';
    
        // Check if the email already exists in the database
        $existingUser = User::where('email', $email)->first();
    
        if ($existingUser) {
            // If the email already exists, generate a unique email
            $email = Str::random(10).'@gmail.com'; // You can customize the email generation logic
        }
    
        $user = User::create([
            'user_role' => $user_role,
            'name' => $name,           
            'username' => rand(100, 500), 
            'email' => $email, // Use the generated email
            'status' => 1,
            'email_verified_at' => now(),
        ]);
    
        event(new Registered($user));
    
        Auth::login($user);
    
        return redirect(RouteServiceProvider::HOME);
    }

    public function login_google()
    {
        return Socialite::driver('google')->redirect();
    }
    
    public function handleGoogleCallback()
    {
        $user = Socialite::driver('google')->user();
    
        // Find or create user based on Google user data
        $existingUser = User::where('email', $user->email)->first();
    
        if ($existingUser) {
            Auth::login($existingUser);
        } else {
            $newUser = User::create([
                'name' => $user->name,
                'email' => $user->email,
                'password' => Hash::make(Str::random(16)), // Temporary password
                // Add other required fields
            ]);
    
            Auth::login($newUser);
        }
    
        return redirect(RouteServiceProvider::HOME);
    }
    









}
