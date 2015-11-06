class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_index_path(@student.id)
    end
  end

  def show
    @show = Student.find(params[:id])
  end

  def index
    @students = Student.all
  end

  def edit
    @edit = Student.find(params[:id])
  end

  def delete
    @delete = Student.find(params[:id])
    if @delete.destroy
      redirect_to students_index_path
    end
  end
  
  def update
    @edit = Student.find(params[:id])
    if @edit.update(student_params)
      redirect_to students_index_path
    end
    
  end
  
  
  private
  
  def student_params
    params.require(:student).permit(:name,:age,:address)
  end
end







