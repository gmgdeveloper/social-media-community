<div class="row" id="postMediaSection{{ $post->post_id }}">
    <div class="col-12">
        @php
        $media_files = DB::table('media_files')->where('post_id', $post->post_id)->get();
        $media_files_count = count($media_files);
        $more_unloaded_images = max(0, $media_files_count - 5);
        @endphp

        <div class="photoGallery visibility-hidden @if($media_files_count == 1) initialized @endif">
            <!-- Display up to 5 images or videos -->
            @foreach($media_files->take(5) as $key => $media_file)
            @if($media_file->file_type == 'video')
            @if(File::exists('storage/post/videos/'.$media_file->file_name))
            @if($media_files_count > 1)
            <a class="position-relative" onclick="showCustomModal('{{route('preview_post', ['post_id' => $post->post_id, 'file_name' => $media_file->file_name])}}', '{{get_phrase('Preview')}}', 'xxl')" href="javascript:void(0)">
                @endif

                <video muted controlsList="nodownload" class="plyr-js w-100 rounded video-thumb @if($media_files_count > 1) initialized @endif" onplay="pauseOtherVideos(this)">
                    <source src="{{ url('/storage/post/videos/'.$media_file->file_name) }}" type="video/mp4">
                    {{-- Add additional source types if necessary --}}
                </video>

                @if($more_unloaded_images > 0 && $key == 4)
                <div class="more_image_overlap"><span><i class="fa-solid fa-plus"></i> {{$more_unloaded_images}}</span></div>
                @endif

                @if($media_files_count > 1)
            </a>
            @endif
            @else
            {{-- Display error message if the video file doesn't exist --}}
            <div class="alert alert-danger">Video file does not exist!</div>
            @endif
            @else
            <div class="picture text-center">
                <a onclick="showCustomModal('{{route('preview_post', ['post_id' => $post->post_id, 'file_name' => $media_file->file_name])}}', '{{get_phrase('Preview')}}', 'xxl')" href="javascript:void(0)">
                    @if($more_unloaded_images > 0 && $key == 4)
                    @php $opacity = 'opacity-7'; @endphp
                    <div class="more_image_overlap"><span><i class="fa-solid fa-plus"></i> {{$more_unloaded_images}}</span></div>
                    @else
                    @php $opacity = ''; @endphp
                    @endif

                    <img src="{{ get_post_image($media_file->file_name) }}" class="w-100 h-100 @if($media_files_count == 1) single-image-ration @endif {{ $opacity }}" alt="">
                </a>
            </div>
            @endif
            @endforeach
        </div>

    </div>
</div>