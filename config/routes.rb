Rails.application.routes.draw do
  resources :shout_outs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'shout_outs#index'
end
