Rails.application.routes.draw do
  #resources :users, constraints: { domain: 'localhost' }
  root to: 'shortened_urls#index'
  get "/:short_url", to: "shortened_urls#show"
  get "shortened/:short_url", to: "shortened_urls#shortened", as: :shortened
  post "/shortened_urls/create"
  get "/shortened_urls/fetch_original_url"
end
