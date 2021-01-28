Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # 管理者
  devise_for :admin, controllers: {
    sessions: 'admin/sessions',
  }
  
  namespace :admin do
    get 'top' => 'homes#top', as: 'top'
  end
  
  # 顧客
  devise_for :customers, controllers: {
    sessions: 'customers/sessions',
    registrations: 'customers/registrations',
  }
  
  scope module: :customers do
    root 'items#top'
    get 'customers/mypage' => 'customers#show', as: 'mypage'
    get 'new' => 'items#new', as: 'new_item'
    resources :items, only: [:create, :show, :edit, :update, :destroy]
  end
end
