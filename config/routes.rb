Rails.application.routes.draw do
  post '/user_token' => 'user_token#create'
  
  namespace :v1 do 
    get '/contacts' => 'contacts#show_contact'
    get '/all_contacts' => 'contacts#all_contacts'
  end 

  namespace :v2 do
    get '/contacts' => 'contacts#index'
    post '/contacts' => 'contacts#create'
    get '/contacts/:id' => 'contacts#show'
    patch '/contacts/:id' => 'contacts#update'
    get '/all_johns' => 'contacts#johns'   
    
    post '/users' => 'users#create'
    
  end
end
