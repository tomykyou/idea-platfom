Rails.application.routes.draw do
  get 'mainnotes/top'
  get 'mainnotes/show'
  get 'mainnotes/new'
  get 'mainnotes/edit'
  get 'mainnotes/_form'
  get 'mainnotes/mypage'
  get 'mainnotes/about'
  get 'mainnotes/userpg'
  get 'users/index'
  get 'users/show'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
