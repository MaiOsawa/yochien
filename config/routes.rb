Rails.application.routes.draw do
 
    resources :schedules 
    get "signup", to: "session#new"
    post "signup", to: "session#create"

end
