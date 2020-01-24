Rails.application.routes.draw do

  resources :acct_measures
  resources :acct_metrics
  resources :acct_partners
  resources :resources
  resources :syllabus_resources
  resources :goals
  resources :keywords
  resources :concentration_keywords
  resources :projects
  resources :concentrations
  namespace :api do
    namespace :v1 do
      resources :syllabuses
      resources :users
    end
  end
end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
