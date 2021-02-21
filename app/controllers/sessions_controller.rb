class SessionsController < ApplicationController
  def new
  end

  def show
  end

  def create
    teacher = Teacher.find_by(email: params[:session][:email])
    student = Student.find_by(email: params[:session][:email])

    if teacher && teacher.authenticate(params[:session][:password]) && session[:student_id].nil?
      session[:teacher_id] = teacher.id
    elsif student && student.authenticate(params[:session][:password]) && session[:teacher_id].nil?
      session[:student_id] = student.id
    elsif student.nil? && teacher.nil?
      redirect_to '/login'
    end
  end

  def destroy
    if session[:teacher_id]
      session.delete(:teacher_id)
    elsif session[:student_id]
      session.delete(:student_id)
    end
    redirect_to '/login'
  end
end
