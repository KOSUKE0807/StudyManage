class RepliesController < ApplicationController

  def new
    @reply = Reply.new
    @id = params[:question_id]
  end

  def create
  end

end
