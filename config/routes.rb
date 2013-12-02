Nov26::Application.routes.draw do

  resources :locations

  resources :agents

  # resources :properties
  root :to => 'properties#index'

   match "list", :to => "properties#list"
   match "index", :to => "properties#index"
   match "show", :to => "properties#show"
   match "new", :to => "properties#new"
   match "edit", :to => "properties#edit"
   match "destroy", :to => "properties#destroy"
   match "sale", :to => "properties#sale"

  resources :sessions, :only => [:new, :create, :destroy]
  match '/login' => 'sessions#new'
  match '/logout' => 'sessions#destroy'

  resources :users
  match '/register' => 'users#new'
  match '/users/index' => 'users#index'

   # resources :apartments
   # root :to => 'apartment#index'

   # match "list", :to => "apartment#list"
   # match "index", :to => "apartment#index"
   # match "show", :to => "apartment#show"
   # match "new", :to => "apartment#new"
   # match "edit", :to => "apartment#edit"
   # match "destroy", :to => "apartment#destroy"


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  match ':controller(/:action(/:id))(.:format)'
end
