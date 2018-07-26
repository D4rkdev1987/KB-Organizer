Rails.application.routes.draw do
  resources :notes
  resources :students
  resources :full_times
  resources :part_times
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
