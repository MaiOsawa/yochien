Rails.application.routes.draw do
 
    resources :schedules 
    
    get "signup", to: "users#new"
    post "signup", to: "users#create"
    get "signin", to: "session#new"
    post "signin", to: "session#create"

end
