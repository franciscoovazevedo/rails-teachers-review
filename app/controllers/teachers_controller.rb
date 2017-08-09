class TeachersController < ApplicationController
  before_action :find_teacher, only: [:show, :edit, :update, :destroy]
  def new
    @teacher = Teacher.new
  end

  def index
    @teachers = Teacher.all
  end

  def destroy
    @teacher.destroy
    redirect_to teachers_path
  end

  def show
  end

  def update
    if @teacher.update(teacher_params)
      redirect_to teacher_path(@teacher)
    else
      render :new
    end
  end

  def edit

  end

  def create
    @teacher = Teacher.create(teacher_params)
    if @teacher.save
      redirect_to teacher_path(@teacher)
    else
      render :new
    end
  end

  private

  def teacher_params
    params.require(:teacher).permit(:name, :description)
  end

  def find_teacher
    @teacher = Teacher.find(params[:id])
  end
end
