class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    # code here
  end

  def activate
   @student = Student.find(params[:id])
      if @student.type_of == true
        @student.update(active: false)
      else 
      @student.update(active: true)
      end
      @student.save
      redirect_to @student 
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end