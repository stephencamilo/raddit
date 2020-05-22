Rails.application.routes.draw do
  devise_for :users
  resources :links
    member do
      put "like", to: "links#upvote"
      put "dislike", to: "links#downvote"

  root to: "links#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
