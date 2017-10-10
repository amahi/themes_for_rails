DummyApp::Application.routes.draw do
  themes_for_rails
  get ':controller(/:action(/:id(.:format)))'
end
