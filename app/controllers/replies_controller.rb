class RepliesController < ApplicationController
  before_action :set_question, only: [:new]

  def new
    @reply = Reply.new
  end

  def create
    reply = Reply.new(reply_params)

    if reply.save
      redirect_to "/questions"
    else
      redirect_to "/home"
    end
  end

  private
  def set_question
    @question = Question.find_by_hashid(params[:question_id])
  end

  def reply_params
    params.require(:reply).permit(
      :message, 
      :question_id, 
      :student_or_teacher, 
      :student_id, 
      :teacher_id)
  end

end
