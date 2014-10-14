RedmineApp::Application.routes.draw do
  # match '/projects/:project_id/customers/:action', :controller => 'customers'
  get '/projects/:id/customers', :to => 'customers#show'
  get '/projects/:id/customers/edit', :to => 'customers#edit'
  get '/projects/:id/customers/select', :to => 'customers#select'
  get '/projects/:id/customers/list', :to => 'customers#list'
  get '/projects/:id/customers/new', :to => 'customers#new'
  post '/projects/:id/customers/assign', :to => 'customers#assign'
  put '/projects/:id/customers', :controller => 'customers', :action => 'update'
  post '/projects/:id/customers', :controller => 'customers', :action => 'create'
  delete '/projects/:id/customers', :controller => 'customers', :action => 'destroy'
end
