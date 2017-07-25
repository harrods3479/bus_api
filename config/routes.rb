Rails.application.routes.draw do
  resources :counters
  resources :terminals
  resources :events do
    resources :comments
  end
end
