require "test_helper"

class Authentication::SessionsControllerTest < ActionDispatch::IntegrationTest

	def setup
		@user = users(:one)
	end
	test "should get new" do 
			get new_session_url
			assert_response :success
	end
	test "should login an user by email" do
			post sessions_url, params: {email: @user.email, password_digest: '123456'}
			end
			assert_redirected_to users_path 
	end
end

    