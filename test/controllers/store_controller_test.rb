require 'test_helper'
# Store controller tests
class StoreControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get store_index_url
    assert_response :success
    assert_select '#columns #side a', minumum: 4
    assert_select '#main .entry', 3
    assert_select 'h3', 'MIB Neuralyzer'
    assert_select '.price', %r{\$[,\d]+\.\d\d}
  end

end
