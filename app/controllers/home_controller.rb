class HomeController < ApplicationController
  before_action :auth_user

  def show
  end
  
  def index
    @sh = SchoolChoise.find_by(student_id: @current_student.id)
    @mg = MonthlyGoal.find_by(student_id: @current_student.id)
    @m = Message.find_by(student_id: @current_student.id)
  end
end
