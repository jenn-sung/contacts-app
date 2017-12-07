Rails.application.routes.draw do



  namespace :v1 do 
    get '/contact' => 'contacts#show_contact'
    get "/contacts" => 'contacts#showcontact1'
    get "/contacts" => 'contacts#index'
  end 
end
