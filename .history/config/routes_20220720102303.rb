Rails.application.routes.draw do
  resources :plants
  patch "/birds/:id", to: "plants#update"
end