class ChangeTeacherStudentToTeacherStudents < ActiveRecord::Migration[5.2]
  def change
    rename_table :teacher_student, :teacher_students
  end
end
