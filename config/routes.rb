Weatherplayground::Application.routes.draw do
  get "home/index"
  get "home/weather"

  root :to => 'home#index'

end
