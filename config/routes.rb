Rails.application.routes.draw do

  get 'play/index'

  get 'play/result'

  get 'draft_team/new'

  get 'viewgame' => 'game#index'

  get 'newgame' => 'game#new'

  post 'game/create'

  get 'game/index'


  root to: "homepage#home"

  devise_for :users
  resources :users, :game, except: [:show]




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
