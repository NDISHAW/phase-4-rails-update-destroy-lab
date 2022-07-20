Rails.application.routes.draw do
  resources :plants, only: [:index, :show, :create, :destroy, :update]
  patch "/birds/:id/like", to: "birds#increment_likes"
end