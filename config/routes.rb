Rails.application.routes.draw do
  devise_for :users
  get '/' => 'photos#index' # Rootディレクトリ
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'photos' => 'photos#index'
  resources :photos, only: %i(new create edit update)

end
