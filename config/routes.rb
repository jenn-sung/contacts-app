Rails.application.routes.draw do
  namespace :v1 do 
    get '/contact' => 'contacts#show_contact'
    get '/all_contacts' => 'contacts#all_contacts'
  end 

  namespace :v2 do
    get '/contacts' => 'contacts#index'
    get '/contacts' => 'contacts#create'
    
   
  end
end
