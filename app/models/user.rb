class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :school_name, presence: true
  validates :city, presence: true
  validates :position, presence: true

  # student side of the relationship -> teacher.
  has_many :teacher_students_as_student, class_name: "TeacherStudent", foreign_key: "student_id"
  has_many :teachers, through: :teacher_students_as_student, source: :teacher

  # teacher side of the relationship -> student.
  has_many :teacher_students_as_teacher, class_name: "TeacherStudent", foreign_key: "teacher_id"
  has_many :students, through: :teacher_students_as_teacher, source: :student

  def full_name
    "#{last_name}, #{first_name}"
  end
end
