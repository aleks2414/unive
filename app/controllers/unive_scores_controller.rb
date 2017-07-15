class UniveScoresController < ApplicationController
  before_action :set_unive_score, only: [:show, :edit, :update, :destroy]
  before_action :set_university
  before_action :authenticate_user!, only: [:new, :edit]

def new
  @unive_score = @university.unive_scores.new
end
  # POST /universities
  # POST /universities.json
  def create
    @unive_score = UniveScore.new(unive_scores_params)
    @unive_score.university_id = @university.id
    @unive_score.user_id = current_user.id

    respond_to do |format|
      if @unive_score.save
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
      if @unive_score.update(university_params)
        format.html { redirect_to @unive_score, notice: 'UniveScore was successfully updated.' }
        format.json { render :show, status: :ok, location: @unive_score }
      else
        format.html { render :edit }
        format.json { render json: @unive_score.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unive_score
      @unive_score = UniveScore.find(params[:id])
    end

    def set_university
      @university = University.friendly.find(params[:university_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unive_scores_params
      params.require(:unive_score).permit(:user_id, :university_id, :unive_score)
    end


end
