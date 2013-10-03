require_relative '../config'

class AddStudentIdTeachers < ActiveRecord::Migration
  def change
    change_table :teachers do |t|
      t.integer   :student_id
    end  
  end
end


