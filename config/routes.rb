FocusGroupApp::Application.routes.draw do
  root :to => 'pages#home'

  get '/user/login' => 'users_session#new'
  post '/user/login' => 'users_session#create'
  delete '/user/login' => 'users_session#destroy'

  get '/company/login' => 'companies_session#new'
  post '/company/login' => 'companies_session#create'
  delete '/company/login' => 'companies_session#destroy'




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


  resources :products


  post '/answers' => 'questions#answers'
  get '/products/:id/answers' => 'products#show_answers', :as => 'show_answers'

  resources :questions

end
