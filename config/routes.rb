Rails.application.routes.draw do
  post 'ufs/:date', to: 'uf#respuesta'
  post 'client/:username', to: 'uf#requestamount'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
