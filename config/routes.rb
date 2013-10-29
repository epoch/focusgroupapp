FocusGroupApp::Application.routes.draw do
  root :to => 'pages#home'

  get '/user/login' => 'users_session#new'
  post '/user/login' => 'users_session#create'
  delete '/user/login' => 'users_session#destroy'

  resources :users, :except => [:edit] do
    collection do
      get 'edit'
    end
  end

  resources :companies, :except => [:edit] do
    collection do
      get 'edit'
    end
  end

  resources :products, :except => [:edit] do
    collection do
      get 'edit'
    end
  end
end
