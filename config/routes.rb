Rails.application.routes.draw do

  devise_for :users
  resources :people, except: [:show]

  root to: "people#index"

  get 'welcome' => 'homepage#home'

  get 'people/new'

  get 'people/create'

  get 'people/edit'

  get 'people/update'

  get 'people/destroy'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
