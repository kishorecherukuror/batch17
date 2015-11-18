class StudentsController < ApplicationController
  before_action :set_id, only: [:show, :edit, :update, :destroy]
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_path(@student.id)
    else
      render 'new'
    end
  end

  def show
  end

  def index
    @students = Student.all
  end

  def edit
  end

  def destroy
    if @student.destroy
      redirect_to students_path
    end
  end
  
  def update
    if @edit.update(student_params)
      redirect_to students_path
    end
    
  end
  
  
  private
  
  def student_params
    params.require(:student).permit(:name,:age,:address,:fname,:lname)
  end
  def set_id
    @student = Student.find(params[:id])
  end
end







