class HomeController < ApplicationController
  before_action :auth_user

  def show
  end
  
  def index
    @sh = SchoolChoise.find_by(student_id: @current_student.id)
    @mg = MonthlyGoal.find_by(student_id: @current_student.id)
    @m = Message.find_by(student_id: @current_student.id)
  end

  def school_update
    school_name = params[:data][:text]
    s = SchoolChoise.find_or_initialize_by(student_id: @current_student.id)
    s.school_choise = school_name
    s.save 

    render partial: 'ajax_school_choise', locals: { school_name: s.school_choise }
  end

  def goal_update
  end

  def get_school_params
    params.permit(:school_choise, :student_id)
  end
end

