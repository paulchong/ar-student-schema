require_relative '../../db/config'

class StudentsTeacher < ActiveRecord::Base
  validates_uniqueness_of :teacher_id, :scope => :account_id
end


