class WelcomeController < ApplicationController
  def index
  	@universities = University.all
  	@countries = Country.all
  end
end
