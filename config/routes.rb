Rails.application.routes.draw do
  root 'static_pages#home'
  post 'users/subscribe', to: "users#subscribe"
  post 'users/unsubscribe/:id/:token', to: "users#unsubscribe", as: "unsubscribe_nl"
  get 'users/unsubscribe/:id/:token', to: "users#unsubscribe"
  post 'users/subscribe/:id/:token', to: "users#confirm_subscription", as: "subscribe_nl"
  get 'users/subscribe/:id/:token', to: "users#confirm_subscription"
  get '1', to: 'static_pages#landing_page_1'
  get '2', to: 'static_pages#landing_page_2'
  get '3', to: 'static_pages#landing_page_3'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
