class StudyRecordsController < ApplicationController
  before_action :auth_user

  def show
  end

  def new
  end

  def index
    records = StudyRecord.where(student_id: @current_user.id)
    records = records.page(params[:page]).per(5)
    @records = records.all.order(id: "DESC")
    @r = []
    @records.each{|r| @r.push(r)}
  end
end
