class Api::V1::SyllabusesController < ApplicationController
  def index
    @syllabi = Syllabus.all
    render json: @syllabi
  end
end
