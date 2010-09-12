Practise::Application.routes.draw do |map|
  
  root :to => 'people#index'  
  
  resources :users
  match 'create' => 'sessions#create', :as => :create, :method => :post
#   resource  :session do
#     member do
#       post :create
#     end
#   end
    
   match 'login' => 'sessions#new', :as => :login
   match 'logout' => 'sessions#destroy', :as => :logout
  
  resources :people do
    collection do 
      get :search
    end
  end
  
 
   match 'search/:term' => 'people#search'
  
    
end
