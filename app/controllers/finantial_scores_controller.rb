class FinantialScoresController < ApplicationController

before_action :set_finantial_scores, only: [:show, :edit, :update, :destroy]
  before_action :set_university
  before_action :set_country
  before_action :authenticate_user!, only: [:new, :edit]

def new
  @finantial_score = @university.finantial_scores.new
end

  # POST /universities
  # POST /universities.json
  def create
    @finantial_score = FinantialScore.new(finantial_scores_params)
    @finantial_score.country_id = @country.id
    @finantial_score.university_id = @university.id
    @finantial_score.user_id = current_user.id

    respond_to do |format|
      if @finantial_score.save
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
      if @finantial_score.update(university_params)
        format.html { redirect_to @finantial_score, notice: 'FinantialScore was successfully updated.' }
        format.json { render :show, status: :ok, location: @finantial_score }
      else
        format.html { render :edit }
        format.json { render json: @finantial_score.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_finantial_scores
      @finantial_score = FinantialScore.friendly.find(params[:id])
    end

    def set_university
      @university = University.friendly.find(params[:university_id])
    end

    def set_country
      @country = Country.friendly.find(params[:country_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def finantial_scores_params
      params.require(:finantial_score).permit(:user_id, :country_id, :university_id, :Finantial_score)
    end




end
