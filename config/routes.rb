Rails.application.routes.draw do
  root to: 'pages#index'
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
