class HomeController < ApplicationController
  before_action :auth_user

  def show
  end
  
  def index
    @sh = SchoolChoise.find_by(student_id: @current_student.id)
    @mg = MonthlyGoal.find_by(student_id: @current_student.id)
    @m = Message.find_by(student_id: @current_student.id)

    @array = [1,2,3,4,5]
  end

  def school_update
    school_name = params[:school]
    s = SchoolChoise.find_or_initialize_by(student_id: @current_student.id)
    s.school_choise = school_name
    s.save 
  end

  def goal_update
    goal = params[:goal]
    m = MonthlyGoal.find_or_initialize_by(student_id: @current_student.id)
    m.goal = goal
    m.save 
  end

  def get_school_params
    params.permit(:school_choise, :student_id)
  end
end

