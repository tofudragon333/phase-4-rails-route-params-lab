class StudentsController < ApplicationController

  def index
    students = Student.all
    byebug
    render json: students
  end

  def show
    students = Student.find(params[:id])
    render json: students, status: :ok
  end

  def query
    students = Student.find_by(params[:first_name])
    byebug
    render json: students
  end

end
