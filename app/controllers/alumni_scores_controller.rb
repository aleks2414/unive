class AlumniScoresController < ApplicationController

before_action :set_alumni_scores, only: [:show, :edit, :update, :destroy]
  before_action :set_university
  before_action :authenticate_user!, only: [:new, :edit]

def new
  @alumni_score = @university.alumni_scores.new
end

  # POST /universities
  # POST /universities.json
  def create
    @alumni_score = AlumniScore.new(alumni_scores_params)

    @alumni_score.university_id = @university.id
    @alumni_score.user_id = current_user.id

    respond_to do |format|
      if @alumni_score.save
        format.html { redirect_to university_path(@university), notice: 'UniveScore was successfully created.' }
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
      if @alumni_score.update(university_params)
        format.html { redirect_to @alumni_score, notice: 'AlumniScore was successfully updated.' }
        format.json { render :show, status: :ok, location: @alumni_score }
      else
        format.html { render :edit }
        format.json { render json: @alumni_score.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alumni_scores
      @alumni_score = AlumniScore.friendly.find(params[:id])
    end

    def set_university
      @university = University.friendly.find(params[:university_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alumni_scores_params
      params.require(:alumni_score).permit(:user_id, :country_id, :university_id, :alumni_score)
    end




end
