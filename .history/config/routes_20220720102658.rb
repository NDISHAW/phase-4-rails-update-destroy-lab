Rails.application.routes.draw do
  resources :plants
  patch "/plants/:id", to: "plants#update"
end