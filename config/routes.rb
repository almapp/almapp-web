Rails.application.routes.draw do

  #=================
  #=== Some info ===
  #=================

  #= Shallow: http://guides.rubyonrails.org/routing.html#nested-resources

  #resources :articles do
  #  resources :comments, only: [:index, :new, :create]
  #end
  #resources :comments, only: [:show, :edit, :update, :destroy]

  # equals:

  #resources :articles do
  #  resources :comments, shallow: true
  #end


  # resources :photos do
  #   collection do
  #     get 'search' # /photos/search
  #   end
  #   member do
  #     get 'preview' # /photos/1/preview
  #   end
  # end


  #=================
  #= Routes start ==
  #=================

  devise_for :users

  # Each organization has a subdomain determined by their 'abbreviation' column, this column can't be null.
  scope ':organization' do
    # resources :organizations, only: [:index], concerns: :searchable

    # Doorkeeper to protect our API
    use_doorkeeper :scope => 'oauth2'

    # GET    /:organization/oauth2/authorize/:code(.:format)                                     doorkeeper/authorizations#show
    # GET    /:organization/oauth2/authorize(.:format)                                           doorkeeper/authorizations#new
    # POST   /:organization/oauth2/authorize(.:format)                                           doorkeeper/authorizations#create
    # PATCH  /:organization/oauth2/authorize(.:format)                                           doorkeeper/authorizations#update
    # PUT    /:organization/oauth2/authorize(.:format)                                           doorkeeper/authorizations#update
    # DELETE /:organization/oauth2/authorize(.:format)                                           doorkeeper/authorizations#destroy
    # POST   /:organization/oauth2/token(.:format)                                               doorkeeper/tokens#create
    # POST   /:organization/oauth2/revoke(.:format)                                              doorkeeper/tokens#revoke
    # GET    /:organization/oauth2/applications(.:format)                                        doorkeeper/applications#index
    # POST   /:organization/oauth2/applications(.:format)                                        doorkeeper/applications#create
    # GET    /:organization/oauth2/applications/new(.:format)                                    doorkeeper/applications#new
    # GET    /:organization/oauth2/applications/:id/edit(.:format)                               doorkeeper/applications#edit
    # GET    /:organization/oauth2/applications/:id(.:format)                                    doorkeeper/applications#show
    # PATCH  /:organization/oauth2/applications/:id(.:format)                                    doorkeeper/applications#update
    # PUT    /:organization/oauth2/applications/:id(.:format)                                    doorkeeper/applications#update
    # DELETE /:organization/oauth2/applications/:id(.:format)                                    doorkeeper/applications#destroy
    # GET    /:organization/oauth2/authorized_applications(.:format)                             doorkeeper/authorized_applications#index
    # DELETE /:organization/oauth2/authorized_applications/:id(.:format)                         doorkeeper/authorized_applications#destroy
    # GET    /:organization/oauth2/token/info(.:format)                                          doorkeeper/token_info#show

    # Namespace for APIs
    namespace :api, defaults: {format: :json} do

      # First version
      # url style: http://subdomain.domain.host/api/v1/resources/action
      namespace :v1 do

        #=================
        #=== Concerns ====
        #=================

        concern :searchable do
          collection do
            # get 'search' # /:resources/search
            get '/search', action: :search
          end
        end

        concern :likeable do
          get '/likes' => 'likes#likes', as: :likes           # /resource/1/likes
          get '/dislikes' => 'likes#dislikes', as: :dislikes  # /resource/1/dislikes
        end

        concern :commentable do
          resources :comments, shallow: true # /resource/1/comments
        end

        concern :posteable do
          resources :posts, shallow: true                                         # /resource/1/posts
          get '/published_posts' => 'posts#published_posts', as: :published_posts # /resource/1/published_posts
        end

        concern :event_hosting do
          resources :events, shallow: true # /resource/1/events
        end

        concern :mapable do
          resources :places, shallow: true # /resource/1/places
        end

        concern :has_students do
          get '/courses_students' => 'likes#likes', as: :likes           # /resource/1/likes
          get '/enrolled_students' => 'likes#dislikes', as: :dislikes  # /resource/1/dislikes
        end

        #==================
        #= General Routes =
        #==================

        get '/' => 'organizations#show'

        resource :me, controller: 'me' do
          get '/sections' => 'me#sections', as: :me_sections
          get '/courses' => 'me#courses', as: :me_courses
          # match '/register_device', to: 'me#register_devise', as: :me_register_device, via: [:get, :post, :delete]
          resources :devices, only: [:create, :destroy]
        end

        resources :groups, concerns: [:commentable, :event_hosting, :posteable, :likeable, :searchable]

        resources :users, concerns: :searchable do
          # resources :devices
        end

        resources :schedule_modules, only: [:index, :show]
        resources :comments, only: [:show, :index],  concerns: :likeable
        resources :posts, :events, :places, only: [:show, :index], concerns: [:commentable, :likeable, :searchable]
        resources :likes, only: [:show]
        get '/likes' => 'likes#likes', as: :likes           # /likes
        get '/dislikes' => 'likes#dislikes', as: :dislikes  # /dislikes

        resources :faculties, :buildings, :academic_unities, :teachers, :careers, :courses, only: [:show, :index], concerns: :searchable
        resources :campuses, shallow: true do
          concerns :event_hosting, :commentable, :posteable, :likeable, :mapable, :searchable
          resources :academic_unities, only: [:index]
          resources :careers, :courses, :teachers, only: [:index]
          resources :faculties, shallow: true do
            concerns :event_hosting, :commentable, :posteable, :likeable, :mapable, :searchable
            resources :careers, :courses, :teachers, only: [:index]
            resources :academic_unities, shallow: true do
              concerns :event_hosting, :commentable, :posteable, :likeable, :mapable, :searchable
              resources :careers, :courses, :teachers, concerns: :likeable
            end
          end
          resources :buildings, concerns: [:event_hosting, :commentable, :posteable, :likeable, :mapable, :searchable]
        end

        resources :courses, shallow: true do
          resources :sections, shallow: true do
            resources :teachers
            resources :schedule_items
            resources :places
            resources :schedule_modules
          end
          resources :teachers
        end

        resources :webpages, concerns: :searchable
        resources :teachers, only: [:index], concerns: :searchable

        resources :chats, shallow: true do
          resources :chat_messages
        end
      end
    end
  end
end



# The priority is based upon order of creation: first created -> highest priority.
# See how all your routes lay out with "rake routes".

# You can have the root of your site routed with "root"
# root 'welcome#index'

# Example of regular route:
#   get 'products/:id' => 'catalog#view'

# Example of named route that can be invoked with purchase_url(id: product.id)
#   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

# Example resource route (maps HTTP verbs to controller actions automatically):
#   resources :products

# Example resource route with options:
#   resources :products do
#     member do
#       get 'short'
#       post 'toggle'
#     end
#
#     collection do
#       get 'sold'
#     end
#   end

# Example resource route with sub-resources:
#   resources :products do
#     resources :comments, :sales
#     resource :seller
#   end

# Example resource route with more complex sub-resources:
#   resources :products do
#     resources :comments
#     resources :sales do
#       get 'recent', on: :collection
#     end
#   end

# Example resource route with concerns:
#   concern :toggleable do
#     post 'toggle'
#   end
#   resources :posts, concerns: :toggleable
#   resources :photos, concerns: :toggleable

# Example resource route within a namespace:
#   namespace :admin do
#     # Directs /admin/products/* to Admin::ProductsController
#     # (app/controllers/admin/products_controller.rb)
#     resources :products
#   end
