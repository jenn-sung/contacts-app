Rails.application.routes.draw do
  namespace :v1 do 
    get '/contact' => 'contacts#show_contact'
    get '/all_contacts' => 'contacts#all_contacts'
  end 

  namespace :v2 do
    get '/contacts' => 'contacts#index'
    post '/contacts' => 'contacts#create'
    get '/contacts' => 'contacts#show'
    patch '/contacts' => 'contacts#update'
    get '/all_johns' => 'contacts#johns'   
  end
end
