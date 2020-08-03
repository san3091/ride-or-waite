require 'test_helper'

class ContactRequestsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get contact_requests_create_url
    assert_response :success
  end

end
