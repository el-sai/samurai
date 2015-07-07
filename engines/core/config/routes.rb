Samurai::Core::Engine.routes.draw do
  devise_for :users, class_name: "Samurai::User", module: :devise
  namespace :admin do
  	get '/' => 'admin#index'
  	resource :users, only: :index
  end
  root to: "dashboard#index"
end
