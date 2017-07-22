class PhotosController < ApplicationController

before_action :set_photo, only: [:show, :edit, :update, :destroy]
  before_action :set_university
  before_action :authenticate_user!, only: [:new, :edit]


  # POST /universities
  # POST /universities.json
  def create
    @photo = Photo.new(photo_params)

    @photo.university_id = @university.id
    @photo.user_id = current_user.id

    respond_to do |format|
      if @photo.save
        format.html { redirect_to university_path(@university), notice: 'photo was successfully created.' }
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
      if @photo.update(university_params)
        format.html { redirect_to @photo, notice: 'photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @photo }
      else
        format.html { render :edit }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      @photo = Photo.friendly.find(params[:id])
    end

    def set_university
      @university = University.friendly.find(params[:university_id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_params
      params.require(:photo).permit(:user_id, :country_id, :university_id, :image2)
    end

end
