NewQuiz::Application.routes.draw do
	
  resources :results
  resources :responses do
    collection do
      put :answer
    end
  end
  resources :users
	resources :answers
  resources :questions
  resources :quizzes
  resources :sessions, only: [:new, :create, :destroy]

	match '/signup',  to: 'users#new'
	match '/signin',  to: 'sessions#new'
	match '/signout', to: 'sessions#destroy', via: :delete

  root :to => 'users#new'
end
