require_relative '../config'

class RenameIdsStudentTeachers < ActiveRecord::Migration
  def change
    change_table :teachers do |t|
      t.rename   :student_id, :student_teacher_id
    end  

    change_table :students do |t|
      t.rename   :teacher_id, :student_teacher_id
    end  

  end
end


