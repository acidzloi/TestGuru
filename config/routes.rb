Rails.application.routes.draw do

  get 'answers/new'
  get 'answers/create'
  get 'answers/edit'
  get 'answers/update'
  get 'answers/destroy'
  get 'answers/show'
  resources :tests do 
    resources :questions, shallow: true, except: :index do 
      resources :answers, shallow: true, except: :index
    end

    member do
      post :start
    end
  end

  resources :test_passages, only: %i[show update] do 
    member do 
      get :result
    end
  end
end
