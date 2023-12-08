Rails.application.routes.draw do

  resources :magazines do
    resources :ads, shallow: true
  end

  # resource :dashboard, only: [:show]

  # namespace :admin do
  #   resource :blogs
  # end
  # resource :blogs, module: 'admin'

  scope module: 'admin' do
    resource :blogs
  end

  # namespace :admin do
  #   get 'blogs/index'
  #   get 'blogs/show'
  #   get 'blogs/create'
  #   get 'blogs/edit'
  #   get 'blogs/update'
  #   get 'blogs/destroy'
  #   get 'blogs/new'
  # end

  concern :article_use do
    resources :articles
  end
  resource :profiles, concerns: :article_use

  # get 'profiles', to: 'users#show'
  get 'profiles', action: :show, controller: 'users'
  resource :profiles

  get 'users/index'
  # get 'users/show'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'
  get 'users/new'

  # get 'profiles/index'
  # get 'profiles/show'
  # get 'profiles/create'
  # get 'profiles/edit'
  # get 'profiles/update'
  # get 'profiles/destroy'
  # get 'profiles/new'

  get 'articles/index'
  get 'articles/show'
  get 'articles/create'
  get 'articles/edit'
  get 'articles/update'
  get 'articles/destroy'
  get 'articles/new'

  get 'ads/index'
  get 'ads/show'
  get 'ads/create'
  get 'ads/edit'
  get 'ads/update'
  get 'ads/destroy'
  get 'ads/new'

  get 'magazines/index'
  get 'magazines/show'
  get 'magazines/create'
  get 'magazines/edit'
  get 'magazines/update'
  get 'magazines/destroy'
  get 'magazines/new'
end
