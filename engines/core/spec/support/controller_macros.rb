# core/spec/support/controller_macros.rb
module ControllerMacros
def login_admin
before(:each) do
@request.env["devise.mapping"] = Devise.mappings[:admin]
sign_in FactoryGirl.create(:admin)
end
end
def login_user
before(:each) do
@request.env["devise.mapping"] = Devise.mappings[:user]
user = FactoryGirl.create(:user)
sign_in user
end
end
def set_engine_routes
before(:each) do
@routes = Samurai::Core::Engine.routes
end
end
end