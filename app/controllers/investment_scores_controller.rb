class InvestmentScoresController < ApplicationController
before_action :set_investment_scores, only: [:show, :edit, :update, :destroy]
  before_action :set_university
  before_action :authenticate_user!, only: [:new, :edit]

def new
  @investment_score = @university.investment_scores.new
end

  # POST /universities
  # POST /universities.json
  def create
    @investment_score = InvestmentScore.new(investment_scores_params)

    @investment_score.university_id = @university.id
    @investment_score.user_id = current_user.id

    respond_to do |format|
      if @investment_score.save
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
      if @investment_score.update(university_params)
        format.html { redirect_to @investment_score, notice: 'InvestmentScore was successfully updated.' }
        format.json { render :show, status: :ok, location: @investment_score }
      else
        format.html { render :edit }
        format.json { render json: @investment_score.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_investment_scores
      @investment_score = InvestmentScore.friendly.find(params[:id])
    end

    def set_university
      @university = University.friendly.find(params[:university_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def investment_scores_params
      params.require(:investment_score).permit(:user_id, :university_id, :investment_score)
    end



end
