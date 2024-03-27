<div class="newsfeed-form single-entry">
    <div class="entry-inner">
        <div class="create-entry">
            @if (isset($page_id)&&!empty($page_id))
                @php
                    $page = \App\Models\Page::find($page_id);

          

                @endphp
                <a href="{{route('single.page',$page_id)}}" class="author-thumb d-flex align-items-center">
                    <img src="{{url($page->logo, 'logo')}}" width="40px" height="40px" class="rounded-circle" alt="">
                </a>
            @else
                <a href="{{route('profile')}}" class="author-thumb d-flex align-items-center">
                    <img src="{{get_user_image($user_info->photo, 'optimized')}}" width="40px" height="40px" class="rounded-circle" alt="">
                </a>
            @endif
            <button class="btn-trans" data-bs-toggle="modal" data-bs-target="#createPost">
                {{  get_phrase("What's on your mind ____", [auth()->user()->name]) }}?
            </button>

            @if (isset($page_id)&&!empty($page_id))
                @include('frontend.main_content.create_post_modal',['page_id'=>$page_id])
            @elseif (isset($group_id)&&!empty($group_id))
                @include('frontend.main_content.create_post_modal',['group_id'=>$group_id])
            @else
                @include('frontend.main_content.create_post_modal')
            @endif

        </div>
        @if(Route::currentRouteName() == 'timeline')
            <div class="post-options justify-content-center">
                <button class="btn" data-bs-toggle="modal" data-bs-target="#createPost"><img src="{{url('storage/images/image.svg')}}" alt="photo">{{get_phrase('Photo')}}/{{get_phrase('Video')}}</button>
                <button class="btn" data-bs-toggle="modal" data-bs-target="#createPost"><img src="{{url('storage/images/location.png')}}" alt="photo" alt="photo">{{get_phrase('Location')}}</button>
                <button class="btn" data-bs-toggle="modal" data-bs-target="#createPost"><img src="{{url('storage/images/camera.svg')}}" alt="photo">{{get_phrase('Live Video')}}</button>
                <button class="btn" data-bs-toggle="modal" data-bs-target="#createPost"><img src="{{url('storage/images/plus-circle-fill.svg')}}" alt="photo">{{get_phrase('More')}}</button>
            </div>
        @endif
    </div>
</div>






{{-- <style>
    .newsfeed-form {
    width: 100%;
    border: 1px solid #ddd;
    padding: 10px;
    margin-bottom: 20px;
}

.entry {
    margin-bottom: 20px;
}


.entry-header {
    margin-bottom: 10px;
}

.entry-title {
    font-size: 18px;
    font-weight: bold;
    margin-bottom: 5px;
}

.entry-meta {
    color: #888;
    font-size: 14px;
}

.entry-content {
    margin-bottom: 10px;
}

.entry-footer {
    display: flex;
    justify-content: space-between;
    align-items: center;
    font-size: 14px;
    color: #888;
}

.entry-actions {
    display: flex;
    align-items: center;
}

button {
    background-color: transparent;
    border: none;
    cursor: pointer;
    padding: 5px 10px;
    margin-right: 10px;
}

.comment-count {
    color: #888;
}

</style> --}}

{{-- <div class="newsfeed-form single-entry">
    <div class="entry">
        <div class="entry-header">
            <div class="entry-title">Post Title</div>
            <div class="entry-meta">Posted by <span class="author">Author</span> in <span class="subreddit">Subreddit</span></div>
        </div>
        <div class="entry-content">
            <p>Post content goes here...</p>
        </div>
        <div class="entry-footer">
            <div class="entry-actions">
                <button class="upvote">Upvote</button>
                <button class="downvote">Downvote</button>
                <button class="comment">Comment</button>
            </div>
            <div class="comment-count">10 Comments</div>
        </div>
    </div>
</div> --}}




{{-- <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div id="news-slider" class="owl-carousel">
          <div class="post-slide">
            <div class="post-img">
              <img src="https://images.unsplash.com/photo-1596265371388-43edbaadab94?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=301&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=501" alt="">
              <a href="#" class="over-layer"><i class="fa fa-link"></i></a>
            </div>
            <div class="post-content">
              <h3 class="post-title">
                <a href="#">Lorem ipsum dolor sit amet.</a>
              </h3>
              <p class="post-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam consectetur cumque dolorum, ex incidunt ipsa laudantium necessitatibus neque quae tempora......</p>
              <span class="post-date"><i class="fa fa-clock-o"></i>Out 27, 2019</span>
              <a href="#" class="read-more">read more</a>
            </div>
          </div>
          
          <div class="post-slide">
            <div class="post-img">
              <img src="https://images.unsplash.com/photo-1533227268428-f9ed0900fb3b?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=303&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=503" alt="">
              <a href="#" class="over-layer"><i class="fa fa-link"></i></a>
            </div>
            <div class="post-content">
              <h3 class="post-title">
                <a href="#">Lorem ipsum dolor sit amet.</a>
              </h3>
              <p class="post-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam consectetur cumque dolorum, ex incidunt ipsa laudantium necessitatibus neque quae tempora......</p>
              <span class="post-date"><i class="fa fa-clock-o"></i>Out 27, 2019</span>
              <a href="#" class="read-more">read more</a>
            </div>
          </div>
          
          <div class="post-slide">
            <div class="post-img">
              <img src="https://images.unsplash.com/photo-1564979268369-42032c5ca998?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=300&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=500" alt="">
              <a href="#" class="over-layer"><i class="fa fa-link"></i></a>
            </div>
            <div class="post-content">
              <h3 class="post-title">
                <a href="#">Lorem ipsum dolor sit amet.</a>
              </h3>
              <p class="post-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam consectetur cumque dolorum, ex incidunt ipsa laudantium necessitatibus neque quae tempora......</p>
              <span class="post-date"><i class="fa fa-clock-o"></i>Out 27, 2019</span>
              <a href="#" class="read-more">read more</a>
            </div>
          </div>
          
          <div class="post-slide">
            <div class="post-img">
              <img src="https://images.unsplash.com/photo-1576659531892-0f4991fca82b?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=301&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=501" alt="">
              <a href="#" class="over-layer"><i class="fa fa-link"></i></a>
            </div>
            <div class="post-content">
              <h3 class="post-title">
                <a href="#">Lorem ipsum dolor sit amet.</a>
              </h3>
              <p class="post-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam consectetur cumque dolorum, ex incidunt ipsa laudantium necessitatibus neque quae tempora......</p>
              <span class="post-date"><i class="fa fa-clock-o"></i>Out 27, 2019</span>
              <a href="#" class="read-more">read more</a>
            </div>
          </div>
          
          <div class="post-slide">
            <div class="post-img">
              <img src="https://images.unsplash.com/photo-1586083702768-190ae093d34d?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=305&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=505" alt="">
              <a href="#" class="over-layer"><i class="fa fa-link"></i></a>
            </div>
            <div class="post-content">
              <h3 class="post-title">
                <a href="#">Lorem ipsum dolor sit amet.</a>
              </h3>
              <p class="post-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam consectetur cumque dolorum, ex incidunt ipsa laudantium necessitatibus neque quae tempora......</p>
              <span class="post-date"><i class="fa fa-clock-o"></i>Out 27, 2019</span>
              <a href="#" class="read-more">read more</a>
            </div>
          </div>
  
          <div class="post-slide">
            <div class="post-img">
              <img src="https://images.unsplash.com/photo-1484656551321-a1161420a2a0?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=306&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=506" alt="">
              <a href="#" class="over-layer"><i class="fa fa-link"></i></a>
            </div>
            <div class="post-content">
              <h3 class="post-title">
                <a href="#">Lorem ipsum dolor sit amet.</a>
              </h3>
              <p class="post-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam consectetur cumque dolorum, ex incidunt ipsa laudantium necessitatibus neque quae tempora......</p>
              <span class="post-date"><i class="fa fa-clock-o"></i>Out 27, 2019</span>
              <a href="#" class="read-more">read more</a>
            </div>
          </div>
        </div>
      </div>
    </div>
</div> --}}

{{-- <div class="owl-carousel owl-theme">
    <div class="item">
        <div class="post-img">
            <img src="https://images.unsplash.com/photo-1596265371388-43edbaadab94?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=301&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=501" alt="">
           
            <div class="overlay">
                <h4>Title 1</h4>
                <p>Description 1</p>
            </div>
          </div>
    </div>
    <div class="item">
        <div class="post-img">
            <img src="https://images.unsplash.com/photo-1533227268428-f9ed0900fb3b?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=303&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=503" alt="">
            <div class="overlay">
                <h4>Title 1</h4>
                <p>Description 1</p>
            </div>
          </div>
    </div>
    <div class="item">
        <div class="post-img">
            <img src="https://images.unsplash.com/photo-1564979268369-42032c5ca998?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=300&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=500" alt="">
            <div class="overlay">
               
                <h4>Title 1</h4>
                <p>Description 1</p>
            </div>
          </div>
    </div>
    <div class="item">
        <div class="post-img">
            <img src="https://images.unsplash.com/photo-1576659531892-0f4991fca82b?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=301&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=501" alt="">
            <div class="overlay">
              
                <h4>Title 1</h4>
                <p>Description 1</p>
            </div>
          </div>
    </div>
    <div class="item">
        <div class="post-img">
            <img src="https://images.unsplash.com/photo-1586083702768-190ae093d34d?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=305&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=505" alt="">
            <div class="overlay">
             
                <h4>Title 1</h4>
                <p>Description 1</p>
            </div>
          </div>
    </div>
    <div class="item">
        <div class="post-img">
            <img src="https://images.unsplash.com/photo-1596265371388-43edbaadab94?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=301&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=501" alt="">
            <div class="overlay">
                <a href="#"><i class="fa fa-link"></i></a>
                <h4>Title 1</h4>
                <p>Description 1</p>
            </div>
          </div>
    </div>
   
</div>


<div class="row">
    <div class="col-12">
        <div class="reddit-posts">
            <div class="post">
                <div class="post-header">
                    <div class="post-author"><img src="https://images.unsplash.com/photo-1596265371388-43edbaadab94?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=301&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=501" class="userimage" alt="" /> <span>todayilearned  19 hr.ago</span>  </div>
                    <div class="post-title mt-3">Post Title</div>
                </div>
                <div class="post-body">
                    <!-- Post content goes here -->
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla pretium tincidunt odio, eu varius magna blandit vel.
                </div>
                <div class="post-footer">
                   
                    <div class="post-upvote"><i class="fa fa-arrow-up"></i></div>
                    <div class="post-score">1000</div>
                    <div class="post-downvote"><i class="fa fa-arrow-down"></i></div>
                    <div class="post-comments"><i class="fa fa-comments"></i> Comments (25)</div>
                    <div class="post-share"><i class="fa fa-share"></i> Share</div>
                </div>
                
            </div>
            <!-- Repeat the same structure for other posts -->
        </div>
    </div>
</div>

<div class="row">
    <div class="col-12">
        <div class="reddit-posts">
            <div class="post">
                <div class="post-header">
                    <div class="post-author"><img src="https://images.unsplash.com/photo-1596265371388-43edbaadab94?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=301&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=501" class="userimage" alt="" /> <span>todayilearned  19 hr.ago</span>  </div>
                    <div class="post-title mt-3">Post Title</div>
                </div>
                <div class="post-body">
                    <!-- Post content goes here -->
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla pretium tincidunt odio, eu varius magna blandit vel.
                </div>
                <div class="post-footer">
                   
                    <div class="post-upvote"><i class="fa fa-arrow-up"></i></div>
                    <div class="post-score">1000</div>
                    <div class="post-downvote"><i class="fa fa-arrow-down"></i></div>
                    <div class="post-comments"><i class="fa fa-comments"></i> Comments (25)</div>
                    <div class="post-share"><i class="fa fa-share"></i> Share</div>
                </div>
                
            </div>
            <!-- Repeat the same structure for other posts -->
        </div>
    </div>
</div>

<div class="row">
    <div class="col-12">
        <div class="reddit-posts">
            <div class="post">
                <div class="post-header">
                    <div class="post-author"><img src="https://images.unsplash.com/photo-1596265371388-43edbaadab94?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=301&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=501" class="userimage" alt="" /> <span>todayilearned  19 hr.ago</span>  </div>
                    <div class="post-title mt-3">Post Title</div>
                </div>
                <div class="post-body">
                    <!-- Post content goes here -->
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla pretium tincidunt odio, eu varius magna blandit vel.
                </div>
                <div class="post-footer">
                   
                    <div class="post-upvote"><i class="fa fa-arrow-up"></i></div>
                    <div class="post-score">1000</div>
                    <div class="post-downvote"><i class="fa fa-arrow-down"></i></div>
                    <div class="post-comments"><i class="fa fa-comments"></i> Comments (25)</div>
                    <div class="post-share"><i class="fa fa-share"></i> Share</div>
                </div>
                
            </div>
            <!-- Repeat the same structure for other posts -->
        </div>
    </div>
</div>


<div class="row">
    <div class="col-12">
        <div class="reddit-posts">
            <div class="post">
                <div class="post-header">
                    <div class="post-author"><img src="https://images.unsplash.com/photo-1596265371388-43edbaadab94?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=301&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=501" class="userimage" alt="" /> <span>todayilearned  19 hr.ago</span>  </div>
                    <div class="post-title mt-3">Post Title</div>
                </div>
                <div class="post-body">
                    <!-- Post content goes here -->
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla pretium tincidunt odio, eu varius magna blandit vel.
                </div>
                <div class="post-footer">
                   
                    <div class="post-upvote"><i class="fa fa-arrow-up"></i></div>
                    <div class="post-score">1000</div>
                    <div class="post-downvote"><i class="fa fa-arrow-down"></i></div>
                    <div class="post-comments"><i class="fa fa-comments"></i> Comments (25)</div>
                    <div class="post-share"><i class="fa fa-share"></i> Share</div>
                </div>
                
            </div>
            <!-- Repeat the same structure for other posts -->
        </div>
    </div>
</div> --}}

  
