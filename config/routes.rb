Rails.application.routes.draw do
  resources :authors do
    get :list, :controller => :articles
  end
  root "articles#index"

  resources :articles
  
  get 'articles/author/:author', to: 'articles#by_author', as: :articles_by_author

  get 'articles/tags/:tag', to: 'articles#by_tags', as: :tag

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
