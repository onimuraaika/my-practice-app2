Rails.application.routes.draw do
  namespace :admin do
    get 'homes/top'
  end
  devise_for :admins
  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # devise_for :admins, controllers: {
  #   sessions: 'admins/sessions',
  # }
  
  # namespace :admin do
  #   get 'top' => 'homes#top', as: 'top'
  # end
  
  # devise_for :customers, controllers: {
  #   sessions: 'customers/sessions',
  #   registrations: 'customers/registrations',
  # }
  
  scope module: :customers do
    root 'items#top'
    # get 'customers/mypage' => 'customers#show', as: 'mypage'
  end
  
  # get 'customers/about' => 'homes#about'
end
