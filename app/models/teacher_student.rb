class TeacherStudent < ApplicationRecord
 belongs_to :teacher, class_name: "User"  #, foreign_key: "teacher_id"
 belongs_to :student, class_name: "User"  #, foreign_key: "student_id"
end

# t = user that's a teacher
# s = user that's a student
# call TeacherStudent.create(student: s, teacher: t)
# call t.student to see if connections working right.
# call s.teacher (also test)
