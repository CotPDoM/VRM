Practise::Application.routes.draw do |map|
  
  root :to => 'people#index'
#   map.search :to => 'people#search'
  
  resources :people do
    get :search, :on => :collection
  end
  
 
   match 'search/:term' => 'people#search'
  
end
