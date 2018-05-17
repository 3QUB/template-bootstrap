Rails.application.routes.draw do
  root 'static_pages#home'
  get '1', to: 'static_pages#landing_page_1'
  get '2', to: 'static_pages#landing_page_2'
  get '3', to: 'static_pages#landing_page_3'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
