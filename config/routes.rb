Rails.application.routes.draw do
  get 'reviews/new'

  get 'reviews/edit'

  get 'restaurants/index'

  get 'restaurants/show'

  get 'restaurants/new'

  get 'restaurants/create'

  get 'restaurants/edit'

  get 'restaurants/update'

  get 'restaurants/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :restaurants

  resources :restaurants do
  resources :review
  end

end
