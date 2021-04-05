class TeacherHomeController < ApplicationController
  def index
    @students = Student.where(teacher_id: @current_teacher)
  end
end
