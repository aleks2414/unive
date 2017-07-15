class GraduationScoresController < ApplicationController
before_action :set_graduation_scores, only: [:show, :edit, :update, :destroy]
  before_action :set_university
  before_action :authenticate_user!, only: [:new, :edit]

def new
  @graduation_score = @university.graduation_scores.new
end

  # POST /universities
  # POST /universities.json
  def create
    @graduation_score = GraduationScore.new(graduation_scores_params)

    @graduation_score.university_id = @university.id
    @graduation_score.user_id = current_user.id

    respond_to do |format|
      if @graduation_score.save
        format.html { redirect_to university_path( @university), notice: 'UniveScore was successfully created.' }
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
      if @graduation_score.update(university_params)
        format.html { redirect_to @graduation_score, notice: 'GraduationScore was successfully updated.' }
        format.json { render :show, status: :ok, location: @graduation_score }
      else
        format.html { render :edit }
        format.json { render json: @graduation_score.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_graduation_scores
      @graduation_score = GraduationScore.friendly.find(params[:id])
    end

    def set_university
      @university = University.friendly.find(params[:university_id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def graduation_scores_params
      params.require(:graduation_score).permit(:user_id, :university_id, :graduation_score)
    end




end
