# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.create!(email: 'admin@admin',
					password: '123456',
					role: '1')

student = User.create!(email: 'student@student',
					   password: '987654',
					   role: '2')
	student_1 = Student.create!(first_name: 'Ivanov',
	 last_name: 'Ivan',
	  middle_name: 'Ivanovich',
	  iin: '0123654789632',
	  tel_1: '87775556666',
	  tel_2: '87779996622',
	  email: 'kkk@ll/ru',
	  skype: 'ivanov222',
	  gender: 'm',
	  id_card: '3698521478',
	  date_of_issue: '12/01/2015',
	  issued_by: 'MVD RK',
	  group_id: '1',
	  course_id: 'Ruby')