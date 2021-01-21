Rails.application.routes.draw do

  root 'api/v1/items#index'

  namespace :api do
    namespace :v1 do

      resources :items, except: :destroy

      resources :users, only: [:index, :show, :create] do 
        resources :items, only: :index, controller: 'user_items'
      end

    end
  end

end