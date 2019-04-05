Rails.application.routes.draw do
  root "pages#main"

  devise_for :users, path: '',
  path_names: {
      sign_in: 'login',
      sign_up: 'register' ,
      sign_out: 'logout'
    }

  resources :contributions, only: [:index, :destroy]
  resources :forms

  scope path: "donate", controller: :forms do
    get '/:slug' => :show
  end
end
