Rails.application.routes.draw do

  root to: "homepage#home"

  devise_for :users
  resources :users, :people, except: [:show]

  get 'welcome' => 'people#index'

  get 'people/new'

  get 'people/create'

  get 'people/edit'

  get 'people/update'

  get 'people/destroy'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
