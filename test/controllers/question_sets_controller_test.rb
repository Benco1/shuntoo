require 'test_helper'


class QuestionSetsControllerTest < ActionController::TestCase

  def setup
    @current_user = users(:bob)
    session[:user_id] = @current_user.id
    @question_set = question_sets(:one)
    @question_sets = @current_user.question_sets
    @question_format = question_formats(:one)

  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:question_sets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question_set" do
    assert_difference('QuestionSet.count') do
      post :create, question_set: { title: 'Unique Title', user_id: 5, response_token: 'token' }
    end

    assert_redirected_to menu_url(assigns(:question_set))
  end

  test "should show question_set" do
    get :show, id: @question_set.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @question_set.id
    assert_response :success
  end

  test "should update question_set" do
    patch :update, id: @question_set.id, question_set: { title: 'Newer title', response_token: 'token' }

    assert_redirected_to question_set_path(assigns(:question_set))
  end

  test "should destroy question_set" do
    assert_difference('QuestionSet.count', -1) do
      delete :destroy, id: @question_set.id
    end

    assert_redirected_to menu_url
  end
end
