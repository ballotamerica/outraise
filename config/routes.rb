Rails.application.routes.draw do
  root "pages#main"

  devise_for :users, path: '',
  path_names: {
      sign_in: 'login',
      sign_up: 'register' ,
      sign_out: 'logout'
    }
end
