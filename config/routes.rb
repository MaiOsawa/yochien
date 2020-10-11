Rails.application.routes.draw do
 
    resources :schedules
    
    get "/signup", to: "users#new"
    post "/signup", to: "users#create"

end
