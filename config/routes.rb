Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :auth
      resources :users
      resources :movies
      resources :ratings
      get '/myMovies/:user_id', to: 'movies#my_movies'
      delete '/myMovies/:movie_id', to: 'movies#destroy_my_movie'
      get '/getUserFromToken', to: 'auth#get_user_from_token'
    end
  end
end
