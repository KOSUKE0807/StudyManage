class StudentsController < ApplicationController
  def edit
  end

  def update
    s = Student.find(@current_student.id)
    if s.update(student_params)
      redirect_to "/home"
    else
      redirect_to edit_student_path(@current_student.id)
    end
  end

  private
  def student_params
    params.require(:student).permit(:user_name, :email, :subject, :image)
  end
end
