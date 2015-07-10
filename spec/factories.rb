FactoryGirl.define do
  factory(:user) do
    username('ian')
    email('ian@ian.com')
    password('1234')
    password_confirmation('1234')
  end

end
