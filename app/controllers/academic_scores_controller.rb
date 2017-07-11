class AcademicScoresController < ApplicationController

before_action :set_academic_scores, only: [:show, :edit, :update, :destroy]
  before_action :set_university
  before_action :set_country
  before_action :authenticate_user!, only: [:new, :edit]


  # POST /universities
  # POST /universities.json
  def create
    @academic_score = AcademicScore.new(academic_scores_params)
    @academic_score.country_id = @country.id
    @academic_score.university_id = @university.id
    @academic_score.user_id = current_user.id

    respond_to do |format|
      if @academic_score.save
        format.html { redirect_to country_university_path(@country, @university), notice: 'UniveScore was successfully created.' }
        format.json { render :show, status: :created, location: @academic_score }
      else
        format.html { render :new }
        format.json { render json: @academic_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /universities/1
  # PATCH/PUT /universities/1.json
  def update
    respond_to do |format|
      if @academic_score.update(university_params)
        format.html { redirect_to @academic_score, notice: 'AcademicScore was successfully updated.' }
        format.json { render :show, status: :ok, location: @academic_score }
      else
        format.html { render :edit }
        format.json { render json: @academic_score.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_academic_scores
      @academic_score = AcademicScore.find(params[:id])
    end

    def set_university
      @university = University.find(params[:university_id])
    end

    def set_country
      @country = Country.find(params[:country_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def academic_scores_params
      params.require(:academic_score).permit(:user_id, :country_id, :university_id, :academic_score)
    end



end
