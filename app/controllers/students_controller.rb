# frozen_string_literal: true

class StudentsController < ApplicationController
  before_action :authenticate_user!, :is_student?

  def show
    @student = Student.find(params[:id])
    @group = @student.group
    @lessons = Lesson.where(group_id: @group.id)
    @homeworks = Homework.where(student_id: @student.id)
  end

  def show_profile_student
    @student = Student.find(params[:student_id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      redirect_to student_path
    else
      render 'edit'
    end
  end

  private

  def is_student?
    redirect_to root_path if current_user.role != 2
  end

  def student_params
    params.require(:student).permit(:last_name, :first_name, :middle_name, :iin, :email, :tel_1, :tel_2, :telegram, :gender, :id_card, :date_of_issue, :issued_by, :group_id, :avatar, images: [])
  end
end
