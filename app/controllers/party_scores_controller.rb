class PartyScoresController < ApplicationController
before_action :set_party_scores, only: [:show, :edit, :update, :destroy]
  before_action :set_university
  before_action :set_country
  before_action :authenticate_user!, only: [:new, :edit]


  # POST /universities
  # POST /universities.json
  def create
    @party_score = PartyScore.new(party_scores_params)
    @party_score.country_id = @country.id
    @party_score.university_id = @university.id
    @party_score.user_id = current_user.id

    respond_to do |format|
      if @party_score.save
        format.html { redirect_to country_university_path(@country, @university), notice: 'UniveScore was successfully created.' }
        format.json { render :show, status: :created, location: @party_score }
      else
        format.html { render :new }
        format.json { render json: @party_score.errors, status: :unprocessable_entity }
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
      @party_score = PartyScore.find(params[:id])
    end

    def set_university
      @university = University.find(params[:university_id])
    end

    def set_country
      @country = Country.find(params[:country_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def party_scores_params
      params.require(:party_score).permit(:user_id, :country_id, :university_id, :party_score)
    end

end
