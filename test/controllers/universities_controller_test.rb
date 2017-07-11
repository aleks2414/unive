require 'test_helper'

class UniversitiesControllerTest < ActionController::TestCase
  setup do
    @university = universities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:universities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create university" do
    assert_difference('University.count') do
      post :create, university: { address: @university.address, country_id: @university.country_id, cutural: @university.cutural, description: @university.description, email: @university.email, facebook: @university.facebook, fundation: @university.fundation, is_cafe: @university.is_cafe, is_job_help: @university.is_job_help, is_libray: @university.is_libray, is_safe: @university.is_safe, is_spiritual: @university.is_spiritual, is_student_exchange: @university.is_student_exchange, is_wifi: @university.is_wifi, languages: @university.languages, latitude: @university.latitude, link_admission: @university.link_admission, linkedin: @university.linkedin, logo: @university.logo, longitude: @university.longitude, many_proffesors: @university.many_proffesors, many_students: @university.many_students, name: @university.name, option: @university.option, private_or_public: @university.private_or_public, rector: @university.rector, sports: @university.sports, twitter: @university.twitter, user_id: @university.user_id, website: @university.website }
    end

    assert_redirected_to university_path(assigns(:university))
  end

  test "should show university" do
    get :show, id: @university
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @university
    assert_response :success
  end

  test "should update university" do
    patch :update, id: @university, university: { address: @university.address, country_id: @university.country_id, cutural: @university.cutural, description: @university.description, email: @university.email, facebook: @university.facebook, fundation: @university.fundation, is_cafe: @university.is_cafe, is_job_help: @university.is_job_help, is_libray: @university.is_libray, is_safe: @university.is_safe, is_spiritual: @university.is_spiritual, is_student_exchange: @university.is_student_exchange, is_wifi: @university.is_wifi, languages: @university.languages, latitude: @university.latitude, link_admission: @university.link_admission, linkedin: @university.linkedin, logo: @university.logo, longitude: @university.longitude, many_proffesors: @university.many_proffesors, many_students: @university.many_students, name: @university.name, option: @university.option, private_or_public: @university.private_or_public, rector: @university.rector, sports: @university.sports, twitter: @university.twitter, user_id: @university.user_id, website: @university.website }
    assert_redirected_to university_path(assigns(:university))
  end

  test "should destroy university" do
    assert_difference('University.count', -1) do
      delete :destroy, id: @university
    end

    assert_redirected_to universities_path
  end
end
