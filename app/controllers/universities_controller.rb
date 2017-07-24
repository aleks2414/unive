class UniversitiesController < ApplicationController
  before_action :set_university, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit]

  # GET /universities
  # GET /universities.json
  def index

 if params[:q].present?
   clear_boolean(params[:q], :country_continent_eq)
   clear_boolean(params[:q], :is_wifi_eq)
   clear_boolean(params[:q], :is_cafe_eq)
   clear_boolean(params[:q], :is_libray_eq)
   clear_boolean(params[:q], :is_job_help_eq)
   clear_boolean(params[:q], :is_student_exchange_eq)
   clear_boolean(params[:q], :is_spiritual_eq)
   clear_boolean(params[:q], :is_safe_eq)
   clear_boolean(params[:q], :gym_eq)
   clear_boolean(params[:q], :pool_eq)
   clear_boolean(params[:q], :residence_eq)
   clear_boolean(params[:q], :location_eq)
   clear_boolean(params[:q], :luch_eq)

   clear_boolean(params[:q], :football_eq)
   clear_boolean(params[:q], :soccer_eq)
   clear_boolean(params[:q], :volley_eq)
   clear_boolean(params[:q], :tennis_eq)
   clear_boolean(params[:q], :table_tennis_eq)
   clear_boolean(params[:q], :baseball_eq)
   clear_boolean(params[:q], :track_and_field_eq)
   clear_boolean(params[:q], :golf_eq)
   clear_boolean(params[:q], :swimming_eq)
   clear_boolean(params[:q], :rugby_eq)
   clear_boolean(params[:q], :climbing_eq)
   clear_boolean(params[:q], :lacrosse_eq)

   clear_boolean(params[:q], :drawing_eq)
   clear_boolean(params[:q], :photography_eq)
   clear_boolean(params[:q], :sculpture_eq)
   clear_boolean(params[:q], :theatre_eq)
   clear_boolean(params[:q], :wood_eq)
   clear_boolean(params[:q], :music_eq)
   clear_boolean(params[:q], :choir_eq)
   clear_boolean(params[:q], :marching_band_eq)
   clear_boolean(params[:q], :dance_eq)
   clear_boolean(params[:q], :mun_eq)
   clear_boolean(params[:q], :volunteer_eq)
   clear_boolean(params[:q], :gamers_eq)

   clear_boolean(params[:q], :english_eq)
   clear_boolean(params[:q], :spanish_eq)
   clear_boolean(params[:q], :french_eq)
   clear_boolean(params[:q], :german_eq)
   clear_boolean(params[:q], :chinese_eq)
   clear_boolean(params[:q], :italian_eq)
   clear_boolean(params[:q], :portuguese_eq)
   clear_boolean(params[:q], :russian_eq)
   clear_boolean(params[:q], :japanese_eq)
   clear_boolean(params[:q], :latin_eq)
   clear_boolean(params[:q], :greek_eq)
   clear_boolean(params[:q], :signs_eq)


 end

    @q = University.ransack(params[:q])
    @universities = @q.result.includes(:country, :careers).uniq

    @universities = @universities.order('name ASC').paginate(:page => params[:page], :per_page => 30)

    @arrUnis = @universities.to_a


      respond_to do |format|
      format.html # index.html.erb
      format.js
    end
  end

  def clear_boolean(q, condition)
    q.delete(condition) if q[condition] == "0"
  end

  # GET /universities/1
  # GET /universities/1.json
  def show
    @upload = @university.uploads.new
    @photo = @university.photos.new
    @unive_score = @university.unive_scores.new
    @academic_score = @university.academic_scores.new
    @party_score = @university.party_scores.new
    @satisfaction_score = @university.satisfaction_scores.new
    @infraestructure_score = @university.infraestructure_scores.new
    @alumni_score = @university.alumni_scores.new
    @admission_score = @university.admission_scores.new
    @graduation_score = @university.graduation_scores.new
    @professor_score = @university.professor_scores.new
    @investment_score = @university.investment_scores.new
    @finantial_score = @university.finantial_scores.new

    @careers = @university.careers
    @uploads = @university.uploads
    @photos = @university.photos
  end

  # GET /universities/new
  def new
    @university = University.new
  end

  # GET /universities/1/edit
  def edit
  end

  # POST /universities
  # POST /universities.json
  def create
    @university = University.new(university_params)
    @university.user_id = current_user.id

    respond_to do |format|
      if @university.save
        format.html { redirect_to university_path(@university), notice: 'University was successfully created.' }
        format.json { render :show, status: :created, location: @university }
      else
        format.html { render :new }
        format.json { render json: @university.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /universities/1
  # PATCH/PUT /universities/1.json
  def update
    respond_to do |format|
      if @university.update(university_params)
        format.html { redirect_to @university, notice: 'University was successfully updated.' }
        format.json { respond_with_bip(@university) }
      else
        format.html { render :edit }
        format.json { respond_with_bip(@university) }
      end
    end
  end

  # DELETE /universities/1
  # DELETE /universities/1.json
  def destroy
    @university.destroy
    respond_to do |format|
      format.html { redirect_to universities_url, notice: 'University was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_university
      @university = University.friendly.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def university_params
      params.require(:university).permit(:user_id, :country_id, :option, :private_or_public, :name, :description, :fundation, :rector, :email, :facebook, :twitter, :linkedin, :website, :link_admission, :address, :longitude, :latitude, :logo, :many_proffesors, :many_students, :is_wifi, :is_cafe, :is_safe, :is_libray, :is_job_help, :is_student_exchange, :is_spiritual, :gym, :pool, :residence, :location, :lunch, :football, :soccer, :volley, :tennis, :table_tennis, :baseball, :track_and_field, :golf, :swimming, :rugby, :climbing, :lacrosse, :drawing, :photography, :sculpture, :theatre, :wood, :music, :choir, :marching_band, :dance, :mun, :volunteer, :gamers, :english, :spanish, :french, :german, :chinese, :italian, :portuguese, :russian, :japanese, :latin, :greek, :signs)
    end
end
