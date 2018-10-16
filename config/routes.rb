Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'
  get '/help' => 'home#help'
  get '/about' => 'home#about'
  get '/howto' => 'home#howto'
  get '/bonuses' => 'home#bonuses'
  get '/referrals' => 'home#referrals'
  get '/stats' => 'home#stats'
  get '/support' => 'home#support'
  get '/tos' => 'home#tos'
end
