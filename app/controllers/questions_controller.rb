class QuestionsController < ApplicationController
  before_action :auth_user

  def new
    @question = Question.new
  end

  def create
    question = Question.create(question_params)
    if question.save
      redirect_to '/questions'
    else 
      redirect_to '/questions/new'
    end
  end

  def index
    @questions = Question.where(student_id: @current_user.id).order(created_at: :desc)
    @replies = Reply.where(student_id: @current_user.id).order(created_at: :desc)
  end

  private 
    def question_params
      params.require(:question).permit(
        :message,
        :image)
        .merge(student_id: @current_user.id, teacher_id: @current_user.teacher.id)
    end
end
