Rails.application.routes.draw do

  get 'set_language/english'
  get 'set_language/russian'
  get 'set_language/ukrainian'

  scope '(:locale)', :locale => /en|ru|ua/ do
    root 'pages#index'

    get '/contact' => 'pages#contact'
    get '/history' => 'pages#history'
    get '/subscribe' => 'pages#subscribe'
    get '/branches' => 'pages#branches'
    get '/price' => 'pages#price'
    get '/expos' => 'pages#expositions'
    get '/starvation' => 'pages#starvation'
    get '/odessa_1917_1941' => 'pages#odessa_1917_1941'
    get '/old_odessa' => 'pages#old_odessa'
    get '/step_ukr' => 'pages#step_ukr'
    get '/showroom' => 'pages#showroom'
    get '/weapons' => 'pages#weapons'
    get '/wwii' => 'pages#wwii'

    get '/contacts' => 'pages#contacts'
    get '/services' =>'pages#services'
    get '/tenders' =>'pages#tenders'
    get '/partners' =>'pages#partners'
    get '/how' =>'pages#how'
    get '/online' => 'pages#online'
    get '/virtual_tour' => 'pages#virtual_tour'
    get '/workshop' => 'pages#workshop'

    resources :clients
    resources :expositions do
      collection do
        get :anons

      end
    end
    resources :articles
    resources :topics
    resources :messengers
    resources :tickets
    resources :users
    resources :posts
  end
end
