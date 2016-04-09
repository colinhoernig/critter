require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "invalid form does not create new user" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, user: {  name: "",
                                email: "user@invalid",
                                password: "foo",
                                password_confirmation: "bar" }
    end
    assert_template 'users/new'
    assert_select 'div#error-explaination'
    assert_select 'div.field_with_errors'
  end

  test "valid form creates user" do
    get signup_path
    assert_difference 'User.count', 1 do
      post_via_redirect users_path, user: { name: "Example Name",
                                            email: "user@example.com",
                                            password: "test123",
                                            password_confirmation: "test123" }
    end
    assert_template 'users/show'
  end
end
