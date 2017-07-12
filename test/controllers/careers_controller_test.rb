require 'test_helper'

class CareersControllerTest < ActionController::TestCase
  setup do
    @career = careers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:careers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create career" do
    assert_difference('Career.count') do
      post :create, career: { aprox_cost: @career.aprox_cost, area: @career.area, blog: @career.blog, country_id: @career.country_id, description: @career.description, duration: @career.duration, email: @career.email, facebook: @career.facebook, for_who: @career.for_who, linkedin: @career.linkedin, modality: @career.modality, name: @career.name, shift: @career.shift, twitter: @career.twitter, university_id: @career.university_id, user_id: @career.user_id, website: @career.website }
    end

    assert_redirected_to career_path(assigns(:career))
  end

  test "should show career" do
    get :show, id: @career
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @career
    assert_response :success
  end

  test "should update career" do
    patch :update, id: @career, career: { aprox_cost: @career.aprox_cost, area: @career.area, blog: @career.blog, country_id: @career.country_id, description: @career.description, duration: @career.duration, email: @career.email, facebook: @career.facebook, for_who: @career.for_who, linkedin: @career.linkedin, modality: @career.modality, name: @career.name, shift: @career.shift, twitter: @career.twitter, university_id: @career.university_id, user_id: @career.user_id, website: @career.website }
    assert_redirected_to career_path(assigns(:career))
  end

  test "should destroy career" do
    assert_difference('Career.count', -1) do
      delete :destroy, id: @career
    end

    assert_redirected_to careers_path
  end
end
