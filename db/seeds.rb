# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# teachers
t1 = User.create!(email: "ayny@music.org", first_name: "Ayn", last_name:"Stephens", school_name: "The Conservatory", city: "Peru", password: "password", password_confirmation: "password")
t2 = User.create(email: "ludwig@music.org", first_name: "Loic", last_name:"Erwan", school_name: "Academy A", city: "Peru", password: "password", password_confirmation: "password")
t3 = User.create(email: "peace@music.org", first_name: "Paco", last_name:"Torres", school_name: "Belfort Comprehensive", city: "Belfort", password: "password", password_confirmation: "password")
t4 = User.create(email: "mai.c@music.org", first_name: "Mai", last_name:"Chen", school_name: "Peru High School", city: "Peru", password: "password", password_confirmation: "password")

# students
s1 = User.create!(email: "high.c@music.org", first_name: "Ella", last_name:"Pierce", school_name: "Peru High School", city: "Peru", password: "password", password_confirmation: "password")
s2 = User.create(email: "kid-car@music.org", first_name: "Ford", last_name:"Venable", school_name: "Peru High School", city: "Peru", password: "password", password_confirmation: "password")
s3 = User.create(email: "forte@music.org", first_name: "Ovelia", last_name:"DeCalb", school_name: "Peru High School", city: "Peru", password: "password", password_confirmation: "password")
s4 = User.create(email: "cal-gal@music.org", first_name: "Fatima", last_name:"Altai", school_name: "Belfort Comprehensive", city: "Belfort", password: "password", password_confirmation: "password")
s5 = User.create(email: "c.manche@music.org", first_name: "Casey", last_name:"Manche", school_name: "Belfort Comprehensive", city: "Belfort", password: "password", password_confirmation: "password")
s6 = User.create(email: "june-kenny@music.org", first_name: "June", last_name:"Cenadaigh", school_name: "Belfort Comprehensive", city: "Belfort", password: "password", password_confirmation: "password")
s7 = User.create(email: "abc-123@music.org", first_name: "Drew", last_name:"Mori", school_name: "Peru High School", city: "Peru", password: "password", password_confirmation: "password")
s8 = User.create(email: "futbol4ever@music.org", first_name: "Marc", last_name:"Okime", school_name: "Peru High School", city: "Peru", password: "password", password_confirmation: "password")
s9 = User.create(email: "keepit-karaoke@music.org", first_name: "Anais", last_name:"Martin", school_name: "Peru High School", city: "Peru", password: "password", password_confirmation: "password")

# teacher-student assign
TeacherStudent.create!(student: s1, teacher: t1)
TeacherStudent.create(student: s2, teacher: t2)
TeacherStudent.create(student: s3, teacher: t2)
TeacherStudent.create(student: s4, teacher: t3)
TeacherStudent.create(student: s5, teacher: t3)
TeacherStudent.create(student: s6, teacher: t3)
TeacherStudent.create(student: s1, teacher: t4)
TeacherStudent.create(student: s2, teacher: t4)
TeacherStudent.create(student: s3, teacher: t4)
TeacherStudent.create(student: s7, teacher: t4)
TeacherStudent.create(student: s8, teacher: t4)
TeacherStudent.create(student: s9, teacher: t4)
