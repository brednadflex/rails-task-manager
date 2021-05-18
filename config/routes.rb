Rails.application.routes.draw do
  # read all tasks
  get '/tasks', to: 'tasks#index'
  # create task
  get "/tasks/new", to: "tasks#new" # display the form
  # read one task
  get "/tasks/:id", to: "tasks#show", as: :task

  post '/tasks', to: 'tasks#create'

  # update a task
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'

  # delete
  delete '/tasks/:id', to: 'tasks#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources: tasks
end
