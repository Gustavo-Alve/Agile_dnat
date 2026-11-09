Rails.application.routes.draw do
  # rota para formulário
  root "logins#index"
  get "/login", to: "logins#index"
  get "/new_user", to: "new_users#index"
  post "/new_users", to: "new_users#create_user"
end
