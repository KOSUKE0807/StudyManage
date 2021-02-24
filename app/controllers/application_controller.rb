class ApplicationController < ActionController::Base
  before_action :current_teacher
  before_action :current_student
  
  include SessionsHelper
end
