# frozen_string_literal: true

require 'test_helper'

class AurthorsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get aurthors_index_url
    assert_response :success
  end

  test 'should get show' do
    get aurthors_show_url
    assert_response :success
  end

  test 'should get new' do
    get aurthors_new_url
    assert_response :success
  end

  test 'should get edit' do
    get aurthors_edit_url
    assert_response :success
  end
end
