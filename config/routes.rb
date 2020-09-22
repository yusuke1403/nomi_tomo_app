Rails.application.routes.draw do
  root to: "izakayas#index"
  resources :izakayas
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
