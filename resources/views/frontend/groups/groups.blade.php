<div class="row gx-3">
    <div class="col-lg-12">
        <div class="group-inner bg-white border rounded p-3">
            <div class="row">
                <div class="col-lg-6">
                    <div class="gr-search">
                        {{-- <h3 class="h6"><span><i class="fa-solid fa-users"></i></span>{{ get_phrase('Communities') }} </h3> --}}
                        <form action="{{ route('search.group') }}" method="GET">
                            <input type="text" class="bg-secondary rounded" name="search" value="@if(isset($_GET['search'])) {{ $_GET['search'] }} @endif" placeholder="Search Community">
                            <span class="i fa fa-search"></span>
                        </form>
                    </div>
                </div>
                <div class="col-lg-6" style="margin-top: 22px">
                    {{-- <div class="widget"> --}}
                    <div class="">
                        <button class="btn btn-primary d-block w-100" onclick="showCustomModal('{{route('load_modal_content', ['view_path' => 'frontend.groups.create'])}}', '{{get_phrase(' Create New Community')}}');" data-bs-toggle="modal"
                            data-bs-target="#newGroup"><i class="fa fa-plus-circle"></i>{{get_phrase(' Create New Community')}}</button>
                </div>
                </div>
            </div>
           
            {{-- <div class="page-suggest mt-4">
                <h3 class="h6">{{ get_phrase('All Communities') }}</h3>
                <div class="ps-wrap mt-3 justify-content-between">
                    <div class="row">
                        @foreach ($groups as $group)
                            <div class="col-md-3 col-lg-6 col-xl-6 col-sm-4 col-6">
                                <div class="card p-2 rounded"> --}}
                                    {{-- <div class="mb-2 thumbnail-103-103" style="background-image: url('{{ get_group_logo($group->logo,'logo') }}');"></div> --}}
                                    {{-- <div class="mb-2 thumbnail-103-103" style="background-image: url('{{ url('storage/groups/logo/optimized/'.$group->logo) }}');"></div>
                                    <a href="{{ route('single.group',$group->id) }}"><h4>{{ ellipsis($group->title,10) }}</h4></a>
                                    @php $joined = \App\Models\Group_member::where('group_id',$group->id)->where('is_accepted','1')->count(); @endphp
                                    <span class="small text-muted">{{ $joined }} {{ get_phrase('Member') }}{{ $joined>1?"s":"" }}</span>
                                    @php $join = \App\Models\Group_member::where('group_id',$group->id)->where('user_id',auth()->user()->id)->count(); @endphp
                                    @if ($join>0)
                                        @if ($group->user_id==auth()->user()->id)
                                            <a href="javascript:void(0)" class="btn btn-secondary">{{ get_phrase('Admin') }}</a>
                                        @else
                                            <a href="javascript:void(0)" onclick="ajaxAction('<?php //echo route('group.rjoin',$group->id); ?>')" class="btn btn-secondary">{{ get_phrase('Joined') }}</a>
                                        @endif
                                    @else
                                        <a href="javascript:void(0)" onclick="ajaxAction('<?php //echo route('group.join',$group->id); ?>')" class="btn btn-primary">{{ get_phrase('Join') }}</a>
                                    @endif
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                @if (count($groups)>1) --}}
                    {{-- <a href="{{ route('all.group.view') }}" class="btn btn-secondary btn-lg d-block mt-3">{{ get_phrase('See More') }}</a> --}}
                    {{-- <a href="#" class="btn btn-secondary btn-lg d-block mt-3">{{ get_phrase('See More') }}</a>
                @endif
            </div> --}}

             <div class="page-suggest mt-4">
                <h3 class="h6">{{ get_phrase('All Communities') }}</h3>
                <div class="ps-wrap mt-3 justify-content-between">
                    <div class="row">
                        <div class="col-md-3 col-lg-3 col-xl-3 col-sm-4 col-3">
                            <div class="card p-2 rounded"> 
                                <div class="mb-2 thumbnail-103-103" style="background-image: url('{{ 'https://a.thumbs.redditmedia.com/kIpBoUR8zJLMQlF8azhN-kSBsjVUidHjvZNLuHDONm8.png' }}');"></div>
                                <div class="community_info">
                                    <h6>funny</h6>
                                    <p>Funny/Humor</p>
                                    <p>100 members</p>
                                </div>
                                
                            </div>
                        </div>
                        <div class="col-md-3 col-lg-3 col-xl-3 col-sm-4 col-3">
                            <div class="card p-2 rounded"> 
                                <div class="mb-2 thumbnail-103-103" style="background-image: url('{{ 'https://styles.redditmedia.com/t5_2qh1i/styles/communityIcon_p6kb2m6b185b1.png?width=64&height=64&frame=1&auto=webp&crop=64:64,smart&s=6726c91bfc2dd09d0446650bb29b08232b835411' }}');"></div>
                                <div class="community_info">
                                    <h6>education</h6>
                                    <p>Learning/Listining</p>
                                    <p>140 members</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-lg-3 col-xl-3 col-sm-4 col-3">
                            <div class="card p-2 rounded"> 
                                <div class="mb-2 thumbnail-103-103" style="background-image: url('{{ 'https://styles.redditmedia.com/t5_2qh4i/styles/communityIcon_d77x0sszups01.png?width=64&height=64&frame=1&auto=webp&crop=64:64,smart&s=7b8e907ebf3ccded48fb00235d0c26fbbfb66ebc' }}');"></div>
                                <div class="community_info">
                                    <h6>books</h6>
                                    <p>Reading Writing Literature</p>
                                    <p>20 members</p>
                                </div>
                            </div>.

                        </div>
                        <div class="col-md-3 col-lg-3 col-xl-3 col-sm-4 col-3">
                            <div class="card p-2 rounded"> 
                                <div class="mb-2 thumbnail-103-103" style="background-image: url('{{ 'https://styles.redditmedia.com/t5_2qh03/styles/communityIcon_1isvxgkk7hw51.png?width=64&height=64&frame=1&auto=webp&crop=64:64,smart&s=76b8c6dc43a1fa14847e5ba749ea15bc172e199f' }}');"></div>
                                <div class="community_info">
                                    <h6>gaming</h6>
                                    <p>Gaming</p>
                                    <p>100 members</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3 col-lg-3 col-xl-3 col-sm-4 col-3">
                            <div class="card p-2 rounded"> 
                                <div class="mb-2 thumbnail-103-103" style="background-image: url('{{ 'https://styles.redditmedia.com/t5_2qh3l/styles/communityIcon_fmygcobc22z81.png?width=64&height=64&frame=1&auto=webp&crop=64:64,smart&s=501bcc656734a985af510672a84b819e996ab1a5' }}');"></div>
                                <div class="community_info">
                                    <h6>news</h6>
                                    <p>World News</p>
                                    <p>100 members</p>
                                </div>
                                
                            </div>
                        </div>
                        <div class="col-md-3 col-lg-3 col-xl-3 col-sm-4 col-3">
                            <div class="card p-2 rounded"> 
                                <div class="mb-2 thumbnail-103-103" style="background-image: url('{{ 'https://styles.redditmedia.com/t5_2qh87/styles/communityIcon_ub69d1lpjlf51.png?width=64&height=64&frame=1&auto=webp&crop=64:64,smart&s=252cc4948602c01f870f3b3d5c028fb1de29dccb' }}');"></div>
                                <div class="community_info">
                                    <h6>space</h6>
                                    <p>science</p>
                                    <p>140 members</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-lg-3 col-xl-3 col-sm-4 col-3">
                            <div class="card p-2 rounded"> 
                                <div class="mb-2 thumbnail-103-103" style="background-image: url('{{ 'https://styles.redditmedia.com/t5_mouw/styles/communityIcon_xtjipkhhefi41.png?width=64&height=64&frame=1&auto=webp&crop=64:64,smart&s=19986a0c3db53d8ce000a0fa635a7b397d4d6019' }}');"></div>
                                <div class="community_info">
                                    <h6>science</h6>
                                    <p>Science</p>
                                    <p>150 members</p>
                                </div>
                            </div>.

                        </div>
                        <div class="col-md-3 col-lg-3 col-xl-3 col-sm-4 col-3">
                            <div class="card p-2 rounded"> 
                                <div class="mb-2 thumbnail-103-103" style="background-image: url('{{ 'https://styles.redditmedia.com/t5_2qjpg/styles/communityIcon_psv46hffiq9c1.jpeg?width=64&height=64&frame=1&auto=webp&crop=64:64,smart&s=8809d0b8a1db4d43f4098a23ae6c59599c352b06' }}');"></div>
                                <div class="community_info">
                                    <h6>memes</h6>
                                    <p>memes/jokes</p>
                                    <p>100 members</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                @if (count($groups)>1)
                    {{-- <a href="{{ route('all.group.view') }}" class="btn btn-secondary btn-lg d-block mt-3">{{ get_phrase('See More') }}</a> --}}
                    <a href="#" class="btn btn-primary btn-lg d-block mt-3">{{ get_phrase('See More') }}</a>
                @endif
            </div>
        </div>
    </div><!--  Group Content Inner Col End -->
    
    {{-- @include('frontend.groups.right-sidebar') --}}
</div>