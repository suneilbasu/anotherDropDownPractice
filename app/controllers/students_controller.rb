class StudentsController < ApplicationController
  def index
    # raise params.inspect
    @students = Student.search(params[:search])
  end

  def new
    @student = Student.new
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(student_params)
    if@student.save
      redirect_to :action => 'index'
    end
end
    def student_params
      params.require(:student).permit(:fname,:sname,:name)
    end
end
