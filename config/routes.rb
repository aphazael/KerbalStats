Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'stats#all'

  get '/stats/', to: 'stats#all'
end
