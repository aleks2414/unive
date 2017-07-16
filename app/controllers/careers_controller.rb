class CareersController < ApplicationController
  before_action :set_career, only: [:show, :edit, :update, :destroy]
  before_action :set_university
  before_action :authenticate_user!, only: [:new, :edit]
  # GET /careers
  # GET /careers.json
  def index
    @careers = Career.all
  end

  # GET /careers/1
  # GET /careers/1.json
  def show
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
  end

  # GET /careers/new
  def new
    @career = @university.careers.new
  end

  # GET /careers/1/edit
  def edit
  end

  # POST /careers
  # POST /careers.json
  def create
    @career = Career.new(career_params)
    @career.university_id = @university.id
    @career.user_id = current_user.id

    respond_to do |format|
      if @career.save
        format.html { redirect_to university_career_path(@university, @career), notice: 'Career was successfully created.' }
        format.json { render :show, status: :created, location: @career }
      else
        format.html { render :new }
        format.json { render json: @career.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /careers/1
  # PATCH/PUT /careers/1.json
  def update
    respond_to do |format|
      if @career.update(career_params)
        format.html { redirect_to university_career_path(@university, @career), notice: 'Career was successfully updated.' }
        format.json { respond_with_bip(@career) }
      else
        format.html { render :edit }
        format.json { respond_with_bip(@career) }
      end
    end
  end

  # DELETE /careers/1
  # DELETE /careers/1.json
  def destroy
    @career.destroy
    respond_to do |format|
      format.html { redirect_to careers_url, notice: 'Career was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_career
      @career = Career.friendly.find(params[:id])
    end

    def set_university
      @university = University.friendly.find(params[:university_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def career_params
      params.require(:career).permit(:user_id, :university_id, :name, :area, :description, :for_who, :duration, :modality, :shift, :email, :website, :facebook, :twitter, :linkedin, :blog, :aprox_cost)
    end
end
