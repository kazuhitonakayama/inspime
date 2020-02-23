Rails.application.routes.draw do
  devise_for :users
  get '/' => 'home#top' # Rootディレクトリ
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post 'photos' => 'photos#create'
  get 'photos' => 'photos#index'
  get 'photos/new' => 'photos#new'
  
end
