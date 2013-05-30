UrlShortener::Application.routes.draw do
  resources :short_urls


  resources :short_urls
  root :to => 'short_urls#new'
  get '/:id' => 'short_urls#redirect', as: "redirect"
end
