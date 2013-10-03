require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateTeachers < ActiveRecord::Migration
  has_and_belongs_to_many :students

  def change
    create_table :teachers do |t|
      t.has_many :students
      t.string  :first_name
      t.string  :last_name
      t.string  :email
      t.string  :phone
      t.timestamps
    end  
  end
end

