NewQuiz::Application.routes.draw do
  resources :answers
  resources :questions
  resources :quizzes

  root :to => 'quizzes#new'
end
