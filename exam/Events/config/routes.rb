Rails.application.routes.draw do
  root 'users#index'

  post '/sessions'=> 'sessions#create'
  get '/sessions/new'
  delete '/sessions'=> 'sessions#destroy'

  get 'comments/index'=> 'comments#index'
  get 'comments/show'
  post 'comments/'=> 'comments#create'
  get 'comments/:id/edit'=> 'comments#edit'
  patch 'comments/:id'=> 'comments#update'
  get 'comments/:id'=> 'comments#show'
  delete 'comments/:id'=> 'comments#destroy'

  get 'events/index'=> 'users#index'
  get 'events/new'
  get 'events/create'=> 'users#create'
  get 'events/destroy'=> 'users#destroy'

  get 'users/index'
  get '/users/'=> 'users#index'
  post '/users/'=> 'users#create'
  get 'users/show'
  get '/users/:id/edit'=> 'users#edit'
  patch '/users/:id'=> 'users#update'
  get '/users/:id'=> 'users#show'
  delete '/users/:id'=> 'users#destroy'

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
end
