class UploadsController < ApplicationController

before_action :set_upload, only: [:show, :edit, :update, :destroy]
  before_action :set_university
  before_action :authenticate_user!, only: [:new, :edit]


  # POST /universities
  # POST /universities.json
  def create
    @upload = Upload.new(upload_params)

    @upload.university_id = @university.id
    @upload.user_id = current_user.id

    respond_to do |format|
      if @upload.save
        format.html { redirect_to university_path(@university), notice: 'Upload was successfully created.' }
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
      if @upload.update(university_params)
        format.html { redirect_to @upload, notice: 'upload was successfully updated.' }
        format.json { render :show, status: :ok, location: @upload }
      else
        format.html { render :edit }
        format.json { render json: @upload.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_upload
      @upload = Upload.friendly.find(params[:id])
    end

    def set_university
      @university = University.friendly.find(params[:university_id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def upload_params
      params.require(:upload).permit(:user_id, :country_id, :university_id, :image)
    end

end
