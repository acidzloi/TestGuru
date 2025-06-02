Rails.application.routes.draw do
  get 'static_pages/about'
  get 'about', to: 'static_pages#about'
  get 'about/author', to: 'static_pages#author'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
