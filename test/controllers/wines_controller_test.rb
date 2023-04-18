require "test_helper"

describe WinesController do
  test "index" do
    get "/wines.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Wine.count, data.length
  end
end
