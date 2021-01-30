Rails.application.routes.draw do

  root 'api/v1/items#index'

  namespace :api do
    namespace :v1 do

      resources :items, only: :index, controller: 'items_index'

      resources :users, only: [:index, :show, :create] do 
        resources :items, except: [:destroy, :update]
      end

    end
  end

end