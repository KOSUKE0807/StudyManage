module SessionsHelper

  def current_teacher
    if session[:teacher_id]
      @current_teacher = Teacher.find(session[:teacher_id])
      @current_user = Teacher.find(session[:teacher_id])
    end
  end

  def current_student
    if session[:student_id]
      @current_student = Student.find(session[:student_id])
      @current_user = Student.find(session[:student_id])
    end
  end

end
