require "test_helper"

class Authentication::UsersControllerTest < ActionDispatch::IntegrationTest
    test "should get new" do 
        get new_user_url
        assert_response :success
end
    test "should create user" do
        assert_difference("User.count") do
            post users_url, params {user {name:'Ronald', s_name:'Alexander', lastname:'Alfonzo', s_lastname:'Varela', rut:'25909662-6', email:'ronaldalfonzo@gmail.com', password_digest:'17983383', passport:'17983383', bloodtype_id:'2', country_id:'204'}}   
        end
        assert_redirected_to users_path 
    end
end

        