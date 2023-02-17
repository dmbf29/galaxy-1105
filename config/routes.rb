Rails.application.routes.draw do
  root to: 'pages#home'
  resources :planets, only: [:show] do
    resources :aliens, only: [:new, :create]
  end
  resources :aliens, only: [:destroy] do
    resources :mutations, only: [:new, :create]
  end
end


# planets#show -> /planets/:id
# aliens#new    ->  planets/:planet_id/aliens/new
# aliens#create ->  planets/:planet_id/aliens
# aliens#destroy -> /aliens/:id


# mutations#new -> aliens/:alien_id/mutations/new
# mutations#create -> aliens/:alien_id/mutations
