class SatisfactionScoresController < ApplicationController
before_action :set_satisfaction_scores, only: [:show, :edit, :update, :destroy]
  before_action :set_university
  before_action :set_country
  before_action :authenticate_user!, only: [:new, :edit]

def new
  @satisfaction_score = @university.satisfaction_scores.new
end

  # POST /universities
  # POST /universities.json
  def create
    @satisfaction_score = SatisfactionScore.new(satisfaction_scores_params)
    @satisfaction_score.country_id = @country.id
    @satisfaction_score.university_id = @university.id
    @satisfaction_score.user_id = current_user.id

    respond_to do |format|
      if @satisfaction_score.save
        format.html { redirect_to country_university_path(@country, @university), notice: 'UniveScore was successfully created.' }
        format.js
      else
        format.html { render :new }
        format.js
      end
    end
  end

  # PATCH/PUT /universities/1
  # PATCH/PUT /universities/1.json
  def update
    respond_to do |format|
      if @satisfaction_score.update(university_params)
        format.html { redirect_to @satisfaction_score, notice: 'SatisfactionScore was successfully updated.' }
        format.json { render :show, status: :ok, location: @satisfaction_score }
      else
        format.html { render :edit }
        format.json { render json: @satisfaction_score.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_satisfaction_scores
      @satisfaction_score = SatisfactionScore.friendly.find(params[:id])
    end

    def set_university
      @university = University.friendly.find(params[:university_id])
    end

    def set_country
      @country = Country.friendly.find(params[:country_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def satisfaction_scores_params
      params.require(:satisfaction_score).permit(:user_id, :country_id, :university_id, :satisfaction_score)
    end
end
