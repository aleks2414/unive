class AdmissionScoresController < ApplicationController

before_action :set_admission_scores, only: [:show, :edit, :update, :destroy]
  before_action :set_university
  before_action :authenticate_user!, only: [:new, :edit]

def new
  @admission_score = @university.admission_scores.new
end

  # POST /universities
  # POST /universities.json
  def create
    @admission_score = AdmissionScore.new(admission_scores_params)

    @admission_score.university_id = @university.id
    @admission_score.user_id = current_user.id

    respond_to do |format|
      if @admission_score.save
        format.html { redirect_to university_path(@university), notice: 'admission_score was successfully created.' }
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
      if @admission_score.update(university_params)
        format.html { redirect_to @admission_score, notice: 'admission_score was successfully updated.' }
        format.json { render :show, status: :ok, location: @admission_score }
      else
        format.html { render :edit }
        format.json { render json: @admission_score.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admission_scores
      @admission_score = AdmissionScore.friendly.find(params[:id])
    end

    def set_university
      @university = University.friendly.find(params[:university_id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def admission_scores_params
      params.require(:admission_score).permit(:user_id, :university_id, :admission_score)
    end




end
