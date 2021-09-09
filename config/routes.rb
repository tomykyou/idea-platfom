Rails.application.routes.draw do
  get 'mainnote/top'
  get 'mainnote/show'
  get 'mainnote/new'
  get 'mainnote/edit'
  get 'mainnote/_form'
  get 'mainnote/mypage'
  get 'mainnote/about'
  get 'mainnote/userpg'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  get 'sessions/new'
  root "mainnotes#top"
  get 'mainnnotes/mypage', to: 'mainnotes#mypage'
  get 'mainnnotes/about', to: 'mainnotes#about'
  get 'mainnnotes/usershow', to: 'mainnotes#usershow'
  get 'mainnnotes/userpg/:id', to: 'mainnotes#userpg'

  resources :mainnote do
    resources :notecomments
  end
end
