UrlShortener::Application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'

  resources :shortened_urls
  resources :urls
  resources :users
  get ':short_address', :to => 'visits#show'

  root :to => 'shortened_urls#new'
end
