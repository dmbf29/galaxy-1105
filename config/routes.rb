Rails.application.routes.draw do
  resources :planets, only: [:show] do
    resources :aliens, only: [:new, :create]
  end
  resources :aliens, only: [:destroy]
end


# planets#show -> /planets/:id
# aliens#new    ->  planets/:planet_id/aliens/new
# aliens#create ->  planets/:planet_id/aliens
# aliens#destroy -> /aliens/:id
