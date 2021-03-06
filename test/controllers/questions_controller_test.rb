require 'test_helper'

class QuestionsControllerTest < ActionController::TestCase
  def setup
    @current_user = users(:bob)
    session[:user_id] = @current_user.id
    session[:response_tokens] ||= {}
    @question_set = question_sets(:one)
  end

  test "should get index" do
    get :index, question_set_id: @question_set.id
    assert_response :success
    assert_not_nil assigns(:questions)
  end

  # test "should get new" do
  #   get :new
  #   assert_response :success
  # end

  # test "should create question" do
  #   assert_difference('Question.count') do
  #     post :create, question: { content: @question.content }
  #   end

  #   assert_redirected_to question_path(assigns(:question))
  # end

  # test "should show question" do
  #   get :show, id: @question
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get :edit, id: @question
  #   assert_response :success
  # end

  # test "should update question" do
  #   patch :update, id: @question, question: { content: @question.content }
  #   assert_redirected_to question_path(assigns(:question))
  # end

  # test "should destroy question" do
  #   assert_difference('Question.count', -1) do
  #     delete :destroy, id: @question
  #   end

  #   assert_redirected_to question_set_path
  # end
end
