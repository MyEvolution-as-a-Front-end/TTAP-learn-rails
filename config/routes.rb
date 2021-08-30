Rails.application.routes.draw do
  root "articles#index"

  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
  # get "/articles/comments/new", to: "comments#new"
  resources :articles do
    resources :comments
  end
end
