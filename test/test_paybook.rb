require 'minitest/autorun'
require 'paybook'

class PaybookTest < Minitest::Test
    
    def setup
        api_key = ENV["API_KEY"]
        @paybook = Paybook::Api.new(api_key)
    end

    def test_user_list_success
        user_list_res = @paybook.user_list
        code = user_list_res["code"]
        assert_equal 200, code
    end

    def test_create_session
        user_list_res = @paybook.user_list
        code = user_list_res["code"]
        response = user_list_res["response"]
        if response.length()
            id_user = response[0]["id_user"]
        else
            assert_empty(response)
        end
        create_session_res = @paybook.create_session(id_user)
        code = create_session_res["code"]
        assert_equal 200, code
    end
end