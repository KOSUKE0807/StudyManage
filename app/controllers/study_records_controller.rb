class StudyRecordsController < ApplicationController
  before_action :auth_user

  def new
    @record = StudyRecord.new
  end

  def create
    record = StudyRecord.create(record_params)
    if record.save
      redirect_to '/study_records'
    else 
      redirect_to '/study_records/new'
    end
  end

  def index
    records = StudyRecord.where(student_id: @current_user.id)
    records = records.page(params[:page]).per(5)
    @records = records.all.order(id: "DESC")
    @r = []
    @records.each{|r| @r.push(r)}
  end

  private
    def record_params
      params.require(:study_record).permit(
        :study_time,
        :study_text,
        :comment,
        :subject)
        .merge(student_id: @current_user.id)
    end
end
