Rails.application.routes.draw do

  get 'set_language/english'
  get 'set_language/russian'
  get 'set_language/ukrainian'

  scope '(:locale)', :locale => /en|ru|ua/ do
    # root 'pages#index'
    root 'mobile#index'

    resources :mobile, only: :index do
      collection do
        get :contact
        get :history
        get :subscribe
        get :branches
        get :price
        get :expositions
        get :starvation
        get :odessa_1917_1941
        get :old_odessa
        get :step_ukr
        get :showroom
        get :weapons
        get :wwii
      end
    end

    # get '/contact' => 'pages#contact'
    # get '/history' => 'pages#history'
    #
    # resources :clients
    # resources :expositions
    # resources :articles
    # resources :topics
    # resources :messengers
    # resources :tickets
    # resources :users
    # resources :posts
  end
end
