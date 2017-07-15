class PartyScoresController < ApplicationController
before_action :set_party_scores, only: [:show, :edit, :update, :destroy]
  before_action :set_university
  before_action :authenticate_user!, only: [:new, :edit]

def new
  @party_score = @university.party_scores.new
end

  # POST /universities
  # POST /universities.json
  def create
    @party_score = PartyScore.new(party_scores_params)

    @party_score.university_id = @university.id
    @party_score.user_id = current_user.id

    respond_to do |format|
      if @party_score.save
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
      if @party_score.update(university_params)
        format.html { redirect_to @party_score, notice: 'PartyScore was successfully updated.' }
        format.json { render :show, status: :ok, location: @party_score }
      else
        format.html { render :edit }
        format.json { render json: @party_score.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_party_scores
      @party_score = PartyScore.friendly.find(params[:id])
    end

    def set_university
      @university = University.friendly.find(params[:university_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def party_scores_params
      params.require(:party_score).permit(:user_id, :university_id, :party_score)
    end

end
