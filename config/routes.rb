Rails.application.routes.draw do
  root 'static_pages#home'
  post 'users/subscribe', to: "users#subscribe"
  post 'users/unsubscribe/:id/:token', to: "users#unsubscribe", as: "unsubscribe_nl"
  get 'users/unsubscribe/:id/:token', to: "users#unsubscribe"
  post 'users/subscribe/:id/:token', to: "users#confirm_subscription", as: "subscribe_nl"
  get 'users/subscribe/:id/:token', to: "users#confirm_subscription"
end
