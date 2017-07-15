class InfraestructureScoresController < ApplicationController
before_action :set_infraestructure_scores, only: [:show, :edit, :update, :destroy]
  before_action :set_university
  before_action :authenticate_user!, only: [:new, :edit]

def new
  @infraestructure_score = @university.infraestructure_scores.new
end

  # POST /universities
  # POST /universities.json
  def create
    @infraestructure_score = InfraestructureScore.new(infraestructure_scores_params)

    @infraestructure_score.university_id = @university.id
    @infraestructure_score.user_id = current_user.id

    respond_to do |format|
      if @infraestructure_score.save
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
      if @infraestructure_score.update(university_params)
        format.html { redirect_to @infraestructure_score, notice: 'InfraestructureScore was successfully updated.' }
        format.json { render :show, status: :ok, location: @infraestructure_score }
      else
        format.html { render :edit }
        format.json { render json: @infraestructure_score.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_infraestructure_scores
      @infraestructure_score = InfraestructureScore.friendly.find(params[:id])
    end

    def set_university
      @university = University.friendly.find(params[:university_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def infraestructure_scores_params
      params.require(:infraestructure_score).permit(:user_id, :country_id, :university_id, :infraestructure_score)
    end




end
