App::Application.routes.draw do

  get "policylayout/menu"

  get "policydashboard/index"

  resources :emergencies

 get "policydashboard" => "policydashboard#index"
  

  get "assetlayout/menu"

  get "assetdashboard/index"

  get "risklayout/menu"

  get "riskdashboard/index"

  get "main/index"
  resources :risks
  resources :emergencies
  resources :teams
  resources :biachecklists
  resources :crises
  resources :plans
  resources :tests 
  resources :calendar
  devise_for :users  
  resources :dashboards
  
  resources :bu_risk_mgts
  resources :third_party_risk_mgts
  resources :risk_exceptions
  resources :asset_risk_mgts
  resources :risk_classifications
  resources :riskdashboard
  resources :risklayout

  resources :classifications
  resources :inventories
  resources :assets
  resources :analyses
  resources :labellings
  resources :assetdashboard
  resources :assetlayout


  resources :excepts
  resources :groups
  resources :members
  resources :standards
  resources :businessunits  
  resources :policies
  
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
  root :to => 'main#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
