Chatter::Application.routes.draw do
  resources :jobapplications

  resources :downloads

  get "comments/create"
  get "comments/destroy"

  resources :posts do
    resources :comments
  end

  devise_for :users do get '/users/sign_out' => 'devise/sessions#destroy' end


  root :to => "posts#index"
match 'contact' => 'contact#new', :as => 'contact', :via => :get
match 'contact' => 'contact#create', :as => 'contact', :via => :post
    resources :articles do
     
     resources :comments
 end 
 
  resources :product_stores

  resources :messages
 
  
  
  end

  
  
  
  
  
  

