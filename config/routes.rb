Rails.application.routes.draw do
  resources :shift_dates
  resources :user_tasks
  resources :user_shifts
  resources :task_shifts
  resources :active_nights
  resources :allnights
  resources :active_times
  resources :shift_times
  resources :desired_tasks
  resources :experience_tasks
  resources :tasks
  resources :user_stations
  resources :stations
  resources :driver_licenses
  resources :affiliations
  resources :committees
  get 'welcome/index'
  resources :home, :only => [ :index ]
  get 'shift' => 'home#show'
  get 'shift/:id' => 'home#show'
  resources :users, :only => [ :index ]
  get 'users/profile' => 'users#show'
  get 'users/profile/edit' => 'users#edit'
  put 'users/profile/edit' => 'users#update'
  patch 'users/profile/edit' => 'users#update'

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :questionnaires, :only => [ :index ]

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

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
end
