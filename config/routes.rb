Rails.application.routes.draw do
 
    resources :schedules
    
    get "signup", to: "session#new"
    post "signup", to: "session#create"
    get "signin", to: "session#new"
    post "signin", to: "session#create"

end
