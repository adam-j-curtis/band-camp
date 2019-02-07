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

  # has_many :user_assignments
  # has_many :assignments, through: :user_assignments

  has_many :user_instrument_sections
  has_many :instrument_sections, through: :user_instrument_sections
  has_many :assignments, through: :instrument_sections

  has_many :bands_as_teacher, class_name: "Band", foreign_key: "Teacher_id"
  has_many :band_memberships
  has_many :bands, through: :band_memberships

  def full_name_last
    "#{last_name}, #{first_name}"
  end

  def full_name_first
    "#{first_name} #{last_name}"
  end

  # def student_list
  #   students = []
  #   students = User.find(params[:id]).students
  #   name_array = []
  #   students.each do |student|
  #     name = student.full_name_last
  #     name_array << name
  #   end
  #   name_array.sort!
  #   name_array.each do |name|
  #     name
  #   end
  # end
end
