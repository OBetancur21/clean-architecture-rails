Rails.application.routes.draw do
  scope module: 'web' do
    scope module: 'controllers' do
      get '/customers/:id', to: 'customers#show'
      post '/customers', to: 'customers#create'
    end
  end
end
