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

  # Each organization has a subdomain determined by their 'abbreviation' column, this column can't be null.
  #constraints(Subdomain) do

  use_doorkeeper
  devise_for :users

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
          get 'search' # /:resources/search
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

      resources :users, only: [:index, :show]
      resource :me, controller: 'me' do
        get '/sections' => 'me#sections', as: :me_sections
        get '/courses' => 'me#courses', as: :me_courses
      end

      resources :groups, concerns: [:commentable, :event_hosting, :posteable, :likeable]

      resources :organizations, only: [:index]
      scope ":organization" do
        get '/' => 'organizations#show'

        resources :users

        resources :schedule_modules, only: [:index, :show]
        resources :comments, only: [:show, :index],  concerns: :likeable
        resources :posts, :events, :places, only: [:show, :index], concerns: [:commentable, :likeable]
        resources :likes, only: [:show]
        get '/likes' => 'likes#likes', as: :likes           # /likes
        get '/dislikes' => 'likes#dislikes', as: :dislikes  # /dislikes

        resources :faculties, :buildings, :academic_unities, :teachers, :careers, only: [:show, :index]
        resources :campuses, shallow: true do
          concerns :event_hosting, :commentable, :posteable, :likeable, :mapable
          resources :academic_unities, only: [:index]
          resources :careers, :courses, :teachers, only: [:index]
          resources :faculties, shallow: true do
            concerns :event_hosting, :commentable, :posteable, :likeable, :mapable
            resources :careers, :courses, :teachers, only: [:index]
            resources :academic_unities, shallow: true do
              concerns :event_hosting, :commentable, :posteable, :likeable, :mapable
              resources :careers, :courses, :teachers, concerns: :likeable
            end
          end
          resources :buildings, concerns: [:event_hosting, :commentable, :posteable, :likeable, :mapable]
        end

        resources :courses, only: [:show, :index], shallow: true do
          concerns :searchable
          resources :sections, shallow: true do
            resources :teachers
            resources :schedule_items
            resources :places
            resources :schedule_modules
          end
          resources :teachers
        end

        resources :webpages

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
