RedmineApp::Application.routes.draw do
  get '/projects/:id/customers/:action', :controller => 'customers'
end
