require 'test_helper'

class CohortsControllerTest < ActionController::TestCase
  setup do
    @cohort = cohorts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cohorts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cohort" do
    assert_difference('Cohort.count') do
      post :create, cohort: { course_id: @cohort.course_id, end_date: @cohort.end_date, location: @cohort.location, name: @cohort.name, start_date: @cohort.start_date, status_id: @cohort.status_id }
    end

    assert_redirected_to cohort_path(assigns(:cohort))
  end

  test "should show cohort" do
    get :show, id: @cohort
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cohort
    assert_response :success
  end

  test "should update cohort" do
    put :update, id: @cohort, cohort: { course_id: @cohort.course_id, end_date: @cohort.end_date, location: @cohort.location, name: @cohort.name, start_date: @cohort.start_date, status_id: @cohort.status_id }
    assert_redirected_to cohort_path(assigns(:cohort))
  end

  test "should destroy cohort" do
    assert_difference('Cohort.count', -1) do
      delete :destroy, id: @cohort
    end

    assert_redirected_to cohorts_path
  end
end
