require_relative '../config'


class CreateStudentsTeachers < ActiveRecord::Migration

  def change
    create_table :students_teachers do |t|
      t.belongs_to :student
      t.belongs_to :teacher
      t.timestamps
    end  
  end
end
