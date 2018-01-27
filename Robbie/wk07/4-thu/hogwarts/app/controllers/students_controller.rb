class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    student = Student.new
    student.name = params[:name]
    student.img_url = params[:img_url]
    student.house_id = rand(1..4)
    student.save
    redirect_to '/students'
  end

end
