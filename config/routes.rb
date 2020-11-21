Rails.application.routes.draw do
    
    root to: "session#new"
 
    resources :schedules

    get "signup", to: "users#new"
    post "signup", to: "users#create"
    get "/users/edit", to: "users#edit", as: "edit_user"
    patch "/users", to: "users#update", as: "user"
    get "signin", to: "session#new"
    post "signin", to: "session#create"
    get "signout", to: "session#destroy"
    get "/facilities", to: "facilities#index"
    get "/facilities/new", to: "facilities#new", as: "new_facility"
    get "/facilities/:id/edit", to: "facilities#edit", as: "edit_facility"
    get "/facilities/:id", to: "facilities#show", as: "facility"
    
end
