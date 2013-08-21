NewQuiz::Application.routes.draw do
  resources :responses do
    collection do
      put :answer
    end
  end

  resources :quizzes do 
    collection do 
      put :show_quiz
    end
  end

  resources :users do 
    collection do 
      put :quiz_taken
    end
  end
  
	resources :answers
  resources :questions
  resources :sessions, only: [:new, :create, :destroy]

	match '/signup',  to: 'users#new'
	match '/signin',  to: 'sessions#new'
	match '/signout', to: 'sessions#destroy', via: :delete

  root :to => 'users#new'
end
