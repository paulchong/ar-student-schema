require_relative 'config'
require 'faker'
require_relative '../app/models/teacher'
require_relative '../app/models/student'
require_relative '../app/models/students_teacher'

# Teacher_id and Student_id arrays

teacher_group = Teacher.all
teacher_heacount = teacher_group.count.to_i
teacher_id_array = (1..teacher_heacount).to_a 

student_group = Student.all
student_heacount = student_group.count.to_i
student_id_array = (1..student_heacount).to_a 

Teachers_per_student = 5

repeat_times = student_heacount * Teachers_per_student

repeat_times.times do
    student_teacher = StudentsTeacher.new
    student_teacher.student_id = student_id_array.sample
    student_teacher.teacher_id = teacher_id_array.sample
    student_teacher.save
  end


