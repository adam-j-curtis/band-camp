# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# teachers

t1 = User.create(email: "ayny@music.org", first_name: "Ayn", last_name: "Stephens", school_name: "The Conservatory", city: "Peru", password: "password", password_confirmation: "password", position: "teacher")
t2 = User.create(email: "ludwig@music.org", first_name: "Loic", last_name: "Erwan", school_name: "Academy A", city: "Peru", password: "password", password_confirmation: "password", position: "teacher")
t3 = User.create!(email: "peace@music.org", first_name: "Paco", last_name: "Torres", school_name: "Belfort Comprehensive", city: "Belfort", password: "password", password_confirmation: "password", position: "teacher")
t4 = User.create(email: "mai.c@music.org", first_name: "Mai", last_name: "Chen", school_name: "Peru High School", city: "Peru", password: "password", password_confirmation: "password", position: "teacher")

# students
s1 = User.create(email: "high.c@music.org", first_name: "Ella", last_name: "Pierce", school_name: "Peru High School", city: "Peru", password: "password", password_confirmation: "password", position: "student")
s2 = User.create(email: "kid-car@music.org", first_name: "Ford", last_name: "Venable", school_name: "Peru High School", city: "Peru", password: "password", password_confirmation: "password", position: "student")
s3 = User.create(email: "forte@music.org", first_name: "Ovelia", last_name: "DeCalb", school_name: "Peru High School", city: "Peru", password: "password", password_confirmation: "password", position: "student")
s4 = User.create(email: "cal-gal@music.org", first_name: "Fatima", last_name: "Altai", school_name: "Belfort Comprehensive", city: "Belfort", password: "password", password_confirmation: "password", position: "student")
s5 = User.create(email: "c.manche@music.org", first_name: "Casey", last_name: "Manche", school_name: "Belfort Comprehensive", city: "Belfort", password: "password", password_confirmation: "password", position: "student")
s6 = User.create(email: "june-kenny@music.org", first_name: "June", last_name: "Cenadaigh", school_name: "Belfort Comprehensive", city: "Belfort", password: "password", password_confirmation: "password", position: "student")
s7 = User.create(email: "abc-123@music.org", first_name: "Drew", last_name: "Mori", school_name: "Peru High School", city: "Peru", password: "password", password_confirmation: "password", position: "student")
s8 = User.create(email: "futbol4ever@music.org", first_name: "Marc", last_name: "Okime", school_name: "Peru High School", city: "Peru", password: "password", password_confirmation: "password", position: "student")
s9 = User.create(email: "keepit-karaoke@music.org", first_name: "Anais", last_name: "Martin", school_name: "Peru High School", city: "Peru", password: "password", password_confirmation: "password", position: "student")

# teacher-student assign
TeacherStudent.create(student: s1, teacher: t1)
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

# instruments
flute = InstrumentSection.create(instrument: "Flute")
snare = InstrumentSection.create(instrument: "Snare")
trombone = InstrumentSection.create(instrument: "Trombone")
trumpet = InstrumentSection.create(instrument: "Trumpet")
saxophone = InstrumentSection.create(instrument: "Saxophone")
bells = InstrumentSection.create(instrument: "Bells")
french_horn = InstrumentSection.create(instrument: "French Horn")
tuba = InstrumentSection.create(instrument: "Tuba")
clarinet = InstrumentSection.create(instrument: "Clarinet")
sousaphone = InstrumentSection.create(instrument: "Sousaphone")
oboe = InstrumentSection.create(instrument: "Oboe")
celeste = InstrumentSection.create(instrument: "Celeste")
piccolo = InstrumentSection.create(instrument: "Piccolo")

# assignments
scale_a = Assignment.create(name: "Concert A Scale", description: "Record this scale to Ensemble at the start of the week.  Practice the scale daily.  Record this scale to Ensemble at the end of the week.  Remember to transcribe the scale if your instrument requires it!")
scale_a_flat = Assignment.create(name: "Concert Ab Scale" , description: "Record this scale to Ensemble at the start of the week.  Practice the scale daily.  Record this scale to Ensemble at the end of the week.  Remember to transcribe the scale if your instrument requires it!")
scale_b = Assignment.create(name: "Concert B Scale", description: "Record this scale to Ensemble at the start of the week.  Practice the scale daily.  Record this scale to Ensemble at the end of the week.  Remember to transcribe the scale if your instrument requires it!")
scale_c_sharp = Assignment.create(name: "Concert C# Scale", description: "Record this scale to Ensemble at the start of the week.  Practice the scale daily.  Record this scale to Ensemble at the end of the week.  Remember to transcribe the scale if your instrument requires it!")
scale_c = Assignment.create(name: "Concert C Scale", description: "Record this scale to Ensemble at the start of the week.  Practice the scale daily.  Record this scale to Ensemble at the end of the week.  Remember to transcribe the scale if your instrument requires it!")
scale_c_flat = Assignment.create(name: "Concert Cb Scale", description: "Record this scale to Ensemble at the start of the week.  Practice the scale daily.  Record this scale to Ensemble at the end of the week.  Remember to transcribe the scale if your instrument requires it!")
scale_d = Assignment.create(name: "Concert D Scale", description: "Record this scale to Ensemble at the start of the week.  Practice the scale daily.  Record this scale to Ensemble at the end of the week.  Remember to transcribe the scale if your instrument requires it!")
scale_d_flat = Assignment.create(name: "Concert Db Scale", description: "Record this scale to Ensemble at the start of the week.  Practice the scale daily.  Record this scale to Ensemble at the end of the week.  Remember to transcribe the scale if your instrument requires it!")
scale_e = Assignment.create(name: "Concert E Scale", description: "Record this scale to Ensemble at the start of the week.  Practice the scale daily.  Record this scale to Ensemble at the end of the week.  Remember to transcribe the scale if your instrument requires it!")
scale_e_flat = Assignment.create(name: "Concert Eb Scale", description: "Record this scale to Ensemble at the start of the week.  Practice the scale daily.  Record this scale to Ensemble at the end of the week.  Remember to transcribe the scale if your instrument requires it!")
scale_f_sharp = Assignment.create(name: "Concert F# Scale", description: "Record this scale to Ensemble at the start of the week.  Practice the scale daily.  Record this scale to Ensemble at the end of the week.  Remember to transcribe the scale if your instrument requires it!")
scale_f = Assignment.create(name: "Concert F Scale", description: "Record this scale to Ensemble at the start of the week.  Practice the scale daily.  Record this scale to Ensemble at the end of the week.  Remember to transcribe the scale if your instrument requires it!")
check_one = Assignment.create(name: "Check Pattern One", description: "Record this check pattern at the start of the week.  Practice this pattern daily.  Record this pattern to Ensemble at the end of the week.")

#<UserInstrumentSection: id: nil, user_id: nil, instrument_section_id: nil, created_at: nil, updated_at: nil>
UserInstrumentSection.create(instrument_section: flute, user: s1)
UserInstrumentSection.create(instrument_section: trombone, user: s2)
UserInstrumentSection.create(instrument_section: trumpet, user: s3)
UserInstrumentSection.create(instrument_section: saxophone, user: s4)
UserInstrumentSection.create(instrument_section: bells, user: s5)
UserInstrumentSection.create(instrument_section: french_horn, user: s6)
UserInstrumentSection.create(instrument_section: tuba, user: s7)
UserInstrumentSection.create(instrument_section: clarinet, user: s8)
UserInstrumentSection.create(instrument_section: sousaphone, user: s9)
UserInstrumentSection.create(instrument_section: snare, user: s1)
UserInstrumentSection.create(instrument_section: snare, user: s2)
UserInstrumentSection.create(instrument_section: snare, user: s3)
UserInstrumentSection.create(instrument_section: snare, user: s4)

#<AssignmentInstrumentSection: id: nil, assignment_id: nil, instrument_section_id: nil, created_at: nil, updated_at: nil>

AssignmentInstrumentSection.create(assignment: scale_a, instrument_section: flute)
AssignmentInstrumentSection.create(assignment: scale_a_flat, instrument_section: trombone)
AssignmentInstrumentSection.create(assignment: scale_b, instrument_section: trumpet)
AssignmentInstrumentSection.create(assignment: scale_c_sharp, instrument_section: saxophone)
AssignmentInstrumentSection.create(assignment: scale_c, instrument_section: bells)
AssignmentInstrumentSection.create(assignment: scale_c_flat, instrument_section: french_horn)
AssignmentInstrumentSection.create(assignment: scale_d, instrument_section: tuba)
AssignmentInstrumentSection.create(assignment: scale_d_flat, instrument_section: clarinet)
AssignmentInstrumentSection.create(assignment: scale_e, instrument_section: sousaphone)
AssignmentInstrumentSection.create(assignment: scale_e_flat, instrument_section: oboe)
AssignmentInstrumentSection.create(assignment: scale_f_sharp, instrument_section: celeste)
AssignmentInstrumentSection.create(assignment: scale_f, instrument_section: piccolo)
AssignmentInstrumentSection.create(assignment: check_one, instrument_section: snare)

# chairs
first = Chair.create(ordinal_name: "First")
second = Chair.create(ordinal_name: "Second")
third = Chair.create(ordinal_name: "Third")
fourth = Chair.create(ordinal_name: "Fourth")
fifth = Chair.create(ordinal_name: "Fifth")
sixth = Chair.create(ordinal_name: "Sixth")
seventh = Chair.create(ordinal_name: "Seventh")
eighth = Chair.create(ordinal_name: "Eighth")
ninth = Chair.create(ordinal_name: "Ninth")
tenth = Chair.create(ordinal_name: "Tenth")

#<ChairInstrumentSection: id: nil, chair_id: nil, instrument_section_id: nil, created_at: nil, updated_at: nil>
ChairInstrumentSection.create(chair: first, instrument_section: flute)
ChairInstrumentSection.create(chair: second, instrument_section: tuba)
ChairInstrumentSection.create(chair: third, instrument_section: bells)
ChairInstrumentSection.create(chair: fourth, instrument_section: french_horn)
ChairInstrumentSection.create(chair: third, instrument_section: trombone)
ChairInstrumentSection.create(chair: second, instrument_section: saxophone)
ChairInstrumentSection.create(chair: first, instrument_section: trumpet)
ChairInstrumentSection.create(chair: first, instrument_section: sousaphone)
ChairInstrumentSection.create(chair: third, instrument_section: clarinet)
ChairInstrumentSection.create(chair: second, instrument_section: flute)
ChairInstrumentSection.create(chair: second, instrument_section: snare)
