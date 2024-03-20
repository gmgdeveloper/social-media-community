
<div class="main_content">
    <!-- Mani section header and breadcrumb -->
    <div class="mainSection-title">
      <div class="row">
        <div class="col-12">
          <div
            class="d-flex justify-content-between align-items-center flex-wrap gr-15"
          >
            <div class="d-flex flex-column">
              <h4>{{ get_phrase('All Sponsors') }}</h4>
              
            </div>
            <div class="export-btn-area">
              <a href="{{ route('admin.create.sponsor') }}" class="export_btn" data-bs-toggle="tooltip" data-bs-placement="top"
              data-bs-custom-class="custom-tooltip"
              data-bs-title="Create Ads">{{ get_phrase('Create') }}</a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Start Admin area -->
    <div class="row">
      <div class="col-12">
        <div class="eSection-wrap-2">
          <!-- Filter area -->
          
          <div class="table-responsive">
            <table class="table eTable" id="myTable">
              <thead>
                <tr>
                  <th scope="col">{{ get_phrase('Sl No') }}</th>
                  <th scope="col">{{ get_phrase('Photo') }}</th>
                  <th scope="col">{{ get_phrase('Sponsor Title') }}</th>
                  <th scope="col">{{ get_phrase('DATE') }}</th>
                  <th scope="col" class="text-center">{{ get_phrase('Action') }}</th>
                </tr>
              </thead>
              <tbody>
                @foreach ( $sponsors as $key => $sponsor )
                    <tr>
                        <th scope="row">
                          <p class="row-number">{{ ++$key }}</p>
                        </th>

                        <td>
                          <div class="dAdmin_info_name min-w-100px">
                              <p><img height="70" src="{{ get_sponsor_image($sponsor->image,"thumbnail") }}" alt=""></p>
                          </div>
                        </td>

                        <td>
                          <div class="dAdmin_info_name min-w-100px">
                              <p><span>{{ ellipsis($sponsor->name,'60') }}</span></p>
                          </div>
                        </td>

                        <td>
                        <div class="dAdmin_info_name min-w-100px">
                            <p>{{  date_formatter($sponsor->created_at) }}</p>
                        </div>
                        </td>
                        
                        <td class="text-center">
                          <div class="adminTable-action me-auto">
                            <button type="button" class="eBtn eBtn-black dropdown-toggle table-action-btn-2" data-bs-toggle="dropdown" aria-expanded="false">
                              {{get_phrase('Actions')}}
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end eDropdown-menu-2 eDropdown-table-action">
                              <li><a class="dropdown-item" href="{{ route('admin.edit.sponsor',$sponsor->id) }}">{{get_phrase('Edit')}}</a></li>
                              <li><a class="dropdown-item" onclick="return confirm('{{get_phrase('Are You Sure Want To Delete?')}}')" href="{{ route('admin.delete.sponsor',$sponsor->id) }}">{{get_phrase('Delete')}}</a></li>
                            </ul>
                          </div>
                        </td>
                    </tr>
                @endforeach
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
    <!-- End Admin area -->

   @include('backend.footer')
  </div>



