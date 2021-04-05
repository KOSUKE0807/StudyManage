class Student < ApplicationRecord
  validates :email, uniqueness: true

  mount_uploader :image, ImgUploader

  belongs_to :teacher
  has_one :monthly_goal
  has_one :school_choise

  has_secure_password
  has_many :study_records, dependent: :destroy
  has_many :monthly_goals, dependent: :destroy
  has_many :messages, dependent: :destroy

  def today_study_time
    each_study_time(Date.today, Date.today + 1.days)
  end

  def weekly_study_time
    sum_study_time(Date.today - 1.weeks)
  end

  def monthly_study_time
    sum_study_time(Date.today - 1.months)
  end

  def all_study_time
    sum_study_time(Date.today - 100.years)
  end

  def ten_days_study_time
    t1 = each_study_time(Date.today, Date.today + 1.days)
    t2 = each_study_time(Date.today - 1.days, Date.today)
    t3 = each_study_time(Date.today - 2.days, Date.today - 1.days)
    t4 = each_study_time(Date.today - 3.days, Date.today - 2.days)
    t5 = each_study_time(Date.today - 4.days, Date.today - 3.days)
    t6 = each_study_time(Date.today - 5.days, Date.today - 4.days)
    t7 = each_study_time(Date.today - 6.days, Date.today - 5.days)
    t8 = each_study_time(Date.today - 7.days, Date.today - 6.days)
    t9 = each_study_time(Date.today - 8.days, Date.today - 7.days)
    t10 = each_study_time(Date.today - 9.days, Date.today - 8.days)

    records = [t1,t2,t3,t4,t5,t6,t7,t8,t9,t10]
  end

  def sum_study_time(set_date)
    t = 0
    records = self.study_records
    rs = records.where("created_at >= ?", set_date)
    if rs.present?
      rs.each do |r|
        t += r.study_time.hour*60
        t += r.study_time.min
      end
    end
    t
  end

  def each_study_time(set_start_date, set_end_date)
    t = 0
    records = self.study_records.where("(created_at >= ?) AND (created_at < ?)", set_start_date, set_end_date)
    if records.present?
      records.each do |r|
        t += r.study_time.hour*60
        t += r.study_time.min
      end
    end
    t
  end


  
end
