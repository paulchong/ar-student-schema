require_relative 'config'
require 'faker'
require_relative '../app/models/teacher'
require_relative '../app/models/student'

# p Student.all
# p Student.methods.sort
# p Student.select 

# Teacher.primary_key

# p teacher = Teacher.find_by()


teacher_group = Teacher.all

teacher_heacount = teacher_group.count.to_i

teacher_id_array = (1..teacher_heacount).to_a 


Student.all.count.times do |i|
  student = Student.find(i+1)
  student.teacher_id = teacher_id_array[1]
  student.save
  teacher_id_array.shuffle!
  end

p Student.all




# p student = Student.find(1).teacher_id
# student.update(teacher_id: 456456)
# student.save

# student = Student.find(1)
# student.teacher_id = 345456
# student.save

# p Student.find(1).teacher_id 

# p Student(:email)


