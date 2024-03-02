Rails.application.routes.draw do
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  devise_for :user, path: 'api/v1', controllers: {
    sessions: 'api/v1/users/sessions'
  }, defaults: { format: :json }

  namespace :api do
    namespace :v1 do
      resources :air_quality_logs
    end
  end
end
