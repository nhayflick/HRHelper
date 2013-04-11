HRHelper::Application.routes.draw do
  resources :employees do
    resources :employee_profiles, :only => [:create, :new]
  end
  resources :teams
  resources :employee_profiles, :only => [:create, :new]
end
