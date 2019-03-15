# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.new(
  email: 'admin@admin',
  password: '123456',
  role: 1
)
admin.skip_confirmation!
admin.save

Course.create!(name: 'Разработчик Ruby on Rails')
Course.create!(name: 'Разработчик Javascript')
Course.create!(name: 'Разработчик  Python')
Course.create!(name: 'Разработчик Java')

Group.create(name: 'RoR-1', course_id: 1, start: '12/02/2018', end: '05/02/2019')
Group.create(name: 'RoR-2', course_id: 1, start: '12/02/2018', end: '05/02/2019')
Group.create(name: 'Javscr-1', course_id: 2, start: '12/12/2018', end: '05/12/2019')
Group.create(name: 'Javscr-2', course_id: 2, start: '12/02/2019', end: '05/02/2020')
Group.create(name: 'Pyt-1', course_id: 3, start: '11/05/2018', end: '04/05/2019')
Group.create(name: 'Jav-1', course_id: 4, start: '11/01/2019', end: '04/02/2020')

Template.create!(title: 'на оказание услуг по обучению')
sections = [
  [1, 'Предмет договора'],
  [2, 'Права и обязанности Сторон'],
  [3, 'Стоимость обучения и порядок оплаты'],
  [4, 'Ответственность сторон'],
  [5, 'Заключительные положения'],
  [6, 'Подписи и реквизиты сторон']
]

sections.each_with_index do |section, _index|
  index = Section.create!(
    number: section[0],
    title: section[1],
    template_id: 1
  )
end

clauses = [
  ['1.1', 'Образовательный центр обязуется оказать Услуги по обучению Студента по дисциплине «<Course>» (далее – «Дисциплина»), а Студент обязуется принять и оплатить услуги Образовательного центра (далее – «Услуги») на условиях, определенных Сторонами в настоящем Договоре.', 1],
  ['1.2', 'Срок обучения: <period>.', 1],
  ['1.3', 'Место проведения обучения: г. Алматы, пр.Жибек-Жолы 135, блок 3 8 этаж.', 1],
  ['2.1', 'Образовательный центр обязан:', 2],
  ['2.1.1', 'провести обучение Студента согласно программе обучения, являющейся Приложением к Договору, в соответствии с внутренними правилами, требованиями, и расписанием, действующем в Образовательном центре;', 2],
  ['2.1.2', 'для выполнения своих обязательств, привлекать преподавателей, квалификация и практический опыт, которых соответствуют требованиям Образовательного центра;', 2],
  ['2.1.3', 'в период действия Договора, обеспечить беспрепятственный доступ Студентов в помещения Образовательного центра и предоставить право пользования учебно-материальной базой;', 2],
  ['2.1.4', 'в случае полного и успешного прохождения учебной программы, Образовательный центр обязан выдать Студенту свидетельство, подтверждающее успешное окончание Курса с оценкой, определяющей уровень освоения программы обучения;', 2],
  ['2.1.5', 'вернуть предоплату за обучение по требованию Студента, в полном размере, в случае расторжения Договора по инициативе Студента, в течение одного месяца с момента заключения Договора.', 2],
  ['2.2', 'Образовательный центр вправе:', 2],
  ['2.2.1', 'оценивать успеваемость Студента в соответствии с внутренними правилами Образовательного центра и мнения преподавателей;', 2],
  ['2.2.2', 'корректировать программу обучения, с целью улучшения ее усвоения Студентами. При этом, Стороны договорились, что такие изменения не будут являться существенными изменения условий настоящего Договора;', 2],
  ['2.2.3', 'расторгнуть настоящий Договор на условиях и в порядке, определенном в Договоре;', 2],
  ['2.2.4', 'самостоятельно определять внутренний распорядок, правила и график работы Образовательного центра, заблаговременно известив об изменениях Студента, посредством средств обмена электронными сообщениями, используемых Образовательным центром;', 2],
  ['2.2.5', 'требовать от Студента надлежащего исполнения своих обязательств по Договору.', 2],
  ['2.3', 'Студент обязан:', 2],
  ['2.3.1.', 'изучить в полном объеме теоретическую и практическую части Курса по выбранной им дисциплине, определенной в п. 1.1. Договора;', 2],
  ['2.3.2', 'выполнять все домашние задания и надлежащим образом посещать занятия, проводимые в помещении Образовательного центра и посредством интернета (вебинары);', 2],
  ['2.3.3', 'не опаздывать на занятия и не пропускать их без уважительной причины;', 2],
  ['2.3.4', 'соблюдать внутренний распорядок и правила, установленные Образовательным центром;', 2],
  ['2.3.5', 'бережно относиться к имуществу Образовательного центра, а в случае причинения ущерба – возместить его по первому требованию Образовательного центра;', 2],
  ['2.3.6', 'своевременно и в полном объеме оплачивать Услуги в порядке и на условиях, определенных в настоящем Договоре;', 2],
  ['2.3.7', 'принять оказанные Образовательным центром Услуги, путем подписания Акта выполненных работ, либо предоставить мотивированный отказ от его подписания в течение трех рабочих дней с даты его предоставления Образовательным центром.', 2],
  ['2.4', 'Студент вправе:', 2],
  ['2.4.1', 'в пределах графика работы Образовательного центра, обращаться к специалистам Образовательного центра (в том числе преподавателям) за разъяснениями и для получения индивидуальных консультаций по пройденному учебному материалу в рамках программы обучения;', 2],
  ['2.4.2', 'получать полную и достоверную информацию об оценке своей успеваемости и критериях ее оценки;', 2],
  ['2.4.3', 'обратиться к руководству Образовательного центра с предложениями, пожеланиями и/или замечаниями по поводу Услуг, оказываемых Образовательным центром;', 2],
  ['2.4.4', 'расторгнуть договор по любой причине в течение одного месяца с даты заключения Договора и требовать полного возврата предоплаты за обучение.', 2],
  ['3.1', 'Стоимость обучения составляет 100 000 (сто тысяч) тенге за каждый учебный месяц обучения.', 3],
  ['3.2', 'Образовательный центр вправе предоставить скидку в размере и на условиях, определяемых Образовательным центром в соответствии с его внутренними актами.', 3],
  ['3.3', 'Оплата Услуг производится Студентом в начале каждого учебного месяца, но не позднее 7 (семи) рабочих дней после даты проведения промежуточной контрольной работы, проводимой в конце каждого учебного месяца.', 3],
  ['3.4', 'В случае, если Студент уклоняется от подписания Акта выполненных работ и не предоставил мотивированный отказ от его подписания, в установленный п. 2.3.7. Договора срок, то такие Услуги считаются оказанными Образовательным центром в полном объеме и с надлежащим качеством.', 3],
  ['4.1', 'Стороны освобождаются от ответственности за частичное или полное неисполнение обязательств по настоящему Договору, если такое неисполнение вызвано обстоятельствами непреодолимой силы (форс-мажор) и если наступление таких обстоятельств подтверждены уполномоченным органом. О любом из таких обстоятельств Сторона, в отношении которой такие обстоятельства наступили, должна письменно уведомить другую Сторону не позднее 10 (Десяти) рабочих дней с  того момента, когда ей стало об этом известно. В противном случае неуведомление является основанием для признания таких обстоятельств не наступившими. Если невозможность полного или частичного исполнения обязательств Сторонами будет существовать свыше 30 (тридцати) календарных дней, то Стороны имеют право расторгнуть Договор.', 4],
  ['4.2', 'В случае возникновения разногласий и споров при исполнении Сторонами настоящего Договора Стороны будут стремиться урегулировать их путем переговоров  и переписки. До предъявления иска, вытекающего из настоящего Договора, обязательно предъявление претензии в письменной форме. Сторона, получившая претензию, обязана рассмотреть ее и в письменной форме уведомить об удовлетворении или о мотивированном отказе от удовлетворения претензии в течение трех рабочих дней со дня ее получения.', 4],
  ['4.3', 'В случае невозможности разрешения споров путем переговоров Стороны передают их на рассмотрение в судебные органы, в соответствии с действующим законодательством РК.', 4],
  ['5.1', 'Настоящий Договор вступает в силу с даты его подписания и действует до полного исполнения Сторонами своих обязательств.', 5],
  ['5.2', 'Договор может быть расторгнут по инициативе Студента путем направления соответствующего уведомления (заявления) в адрес Образовательного центра не менее чем за 10 (десять) календарных дней до предполагаемой даты его расторжения.', 5],
  ['5.3', 'Договор может быть расторгнут по инициативе Образовательного центра в случаях:', 5],
  ['5.3.1', 'невыполнения  Студентом обязательств по оплате оказанных ему Услуг;', 5],
  ['5.3.2', 'посещения занятий в состоянии алкогольного или иного опьянения;', 5],
  ['5.3.3', 'отказа Студента от подписания соответствующего Дополнительного соглашения к Договору, определяющего стоимость обучения;', 5],
  ['5.3.4', 'в иных случаях, предусмотренных действующим законодательством РК.', 5]
]

clauses.each_with_index do |clause, _index|
  index = Clause.create!(
    number: clause[0],
    body: clause[1],
    section_id: clause[2]
  )
end

student_1 = Student.create!(
  first_name: 'Александр',
  last_name: 'Пушкин',
  middle_name: 'Сергеевич',
  iin: 123_654_789_632,
  tel_1: '87775556666',
  tel_2: '87779996622',
  email: 'student@student',
  telegram: 'ivanov222',
  gender: 1,
  id_card: '3698521478',
  date_of_issue: '12/01/2015',
  issued_by: 'МВД РК',
  group_id: 1
)

student_2 = Student.create!(
  first_name: 'Михаил',
  last_name: 'Лермонтов',
  middle_name: 'Юрьевич',
  iin: 123_654_789_632,
  tel_1: '87775556666',
  tel_2: '87779996622',
  email: 'lermontov@gmail',
  telegram: 'ivanov222',
  gender: 1,
  id_card: '3698521478',
  date_of_issue: '12/01/2015',
  issued_by: 'МЮ РК',
  group_id: 1
)
student_3 = Student.create!(
  first_name: 'Евгений',
  last_name: 'Петросян',
  middle_name: 'Вахтангович',
  iin: 123_654_789_632,
  tel_1: '87775556666',
  tel_2: '87779996622',
  email: '565656@gmail',
  telegram: 'ivanov222',
  gender: 1,
  id_card: '3698521478',
  date_of_issue: '12/01/2015',
  issued_by: 'МЮ РК',
  group_id: 1
)

student_4 = Student.create!(
  first_name: 'Александр',
  last_name: 'Шукшин',
  middle_name: 'Савельевич',
  iin: 123_654_789_888,
  tel_1: '8777555888',
  tel_2: '87779996882',
  email: 'shukshin@student',
  telegram: 'shukshin222',
  gender: 1,
  id_card: '3698521888',
  date_of_issue: '12/01/2016',
  issued_by: 'МВД РК',
  group_id: 2
)

student_5 = Student.create!(
  first_name: 'Алена',
  last_name: 'Шукшина',
  middle_name: 'Савельевна',
  iin: 123_654_888_888,
  tel_1: '8777885888',
  tel_2: '87788996882',
  email: 'shukshina@student',
  telegram: 'shukshina222',
  gender: 2,
  id_card: '3698566888',
  date_of_issue: '12/01/2016',
  issued_by: 'МВД РК',
  group_id: 2
)

# student_6 = Student.create!(
#   first_name: 'Елена',
#   last_name: 'Лермонтова',
#   middle_name: 'Анатольевна',
#   iin: 123_654_888_888,
#   tel_1: '8777543888',
#   tel_2: '87788666882',
#   email: 'lermontova@student',
#   telegram: 'lermontova222',
#   gender: 2,
#   id_card: '9998566888',
#   date_of_issue: '12/01/2019',
#   issued_by: 'МВД РК',
#   group_id: 3,
#   id: 6
# )

# student_7 = Student.create!(
#   first_name: 'Элеонора',
#   last_name: 'Толстая',
#   middle_name: 'Анатольевна',
#   iin: 123_699_888_888,
#   tel_1: '8777773888',
#   tel_2: '87787766882',
#   email: 'tolstaia@student',
#   telegram: 'tolstaia222',
#   gender: 2,
#   id_card: '9998577888',
#   date_of_issue: '12/07/2019',
#   issued_by: 'МВД РК',
#   group_id: 3,
#   id: 7
# )

# student_8 = Student.create!(
#   first_name: 'Ева',
#   last_name: 'Толстая',
#   middle_name: 'Филипповна',
#   iin: 123_699_888_888,
#   tel_1: '8777773877',
#   tel_2: '87787766877',
#   email: 'tolstaia777@student',
#   telegram: 'tolstaia777',
#   gender: 2,
#   id_card: '9998577877',
#   date_of_issue: '17/07/2019',
#   issued_by: 'МВД РК',
#   group_id: 4,
#   id: 8
# )

# student_9 = Student.create!(
#   first_name: 'Евлампий',
#   last_name: 'Калягин',
#   middle_name: 'Феодосьевич',
#   iin: 123_444_888_888,
#   tel_1: '8777443877',
#   tel_2: '87787766447',
#   email: 'kaliagin@student',
#   telegram: 'kaliagin777',
#   gender: 1,
#   id_card: '9998444877',
#   date_of_issue: '17/02/2019',
#   issued_by: 'МВД РК',
#   group_id: 4,
#   id: 9
# )

# student_10 = Student.create!(
#   first_name: 'Иван',
#   last_name: 'Тургенев',
#   middle_name: 'Сергеевич',
#   iin: 123_444_888_888,
#   tel_1: '8997443877',
#   tel_2: '87711766447',
#   email: 'turgenev@student',
#   telegram: 'turgenev777',
#   gender: 1,
#   id_card: '9998111877',
#   date_of_issue: '13/02/2019',
#   issued_by: 'МВД РК',
#   group_id: 5,
#   id: 10
# )

# student_11 = Student.create!(
#   first_name: 'Мария',
#   last_name: 'Складовская',
#   middle_name: 'Сергеевна',
#   iin: 123_444_888_111,
#   tel_1: '8997411117',
#   tel_2: '8771176111',
#   email: 'kuri@student',
#   telegram: 'kuri777',
#   gender: 2,
#   id_card: '1118111877',
#   date_of_issue: '13/02/2013',
#   issued_by: 'МВД РК',
#   group_id: 5,
#   id: 11
# )

# student_12 = Student.create!(
#   first_name: 'Пьер',
#   last_name: 'Кюри',
#   middle_name: 'Семенович',
#   iin: 123_444_888_333,
#   tel_1: '8997411333',
#   tel_2: '8771176333',
#   email: 'kuri333@student',
#   telegram: 'kuri333',
#   gender: 1,
#   id_card: '3338111877',
#   date_of_issue: '13/03/2013',
#   issued_by: 'МВД РК',
#   group_id: 6,
#   id: 12
# )

# student_13 = Student.create!(
#   first_name: 'Михаил',
#   last_name: 'Булгаков',
#   middle_name: 'Афанасьевич',
#   iin: 123_444_888_456,
#   tel_1: '8997411456',
#   tel_2: '8771176456',
#   email: 'master@student',
#   telegram: 'master666',
#   gender: 1,
#   id_card: '3338111866',
#   date_of_issue: '13/06/2013',
#   issued_by: 'МВД РК',
#   group_id: 6,
#   id: 13
# )

teacher_1 = Teacher.create!(
  first_name: 'Уэлс',
  last_name: 'Герберт',
  middle_name: 'Андреевич',
  tel_1: '87775878787',
  tel_2: '87775454548',
  email: 'gerberd@gmail',
  telegram: 'gerberd1112232',
  id: 1
)
teacher_2 = Teacher.create!(
  first_name: 'Гитлер',
  last_name: 'Адольф',
  middle_name: 'Алоизович',
  tel_1: '87775878666',
  tel_2: '87775454666',
  email: 'gitler@gmail',
  telegram: 'gitler666',
  id: 2
)
teacher_3 = Teacher.create!(
  first_name: 'Ульянов',
  last_name: 'Владимир',
  middle_name: 'Ильич',
  tel_1: '87775811187',
  tel_2: '87775111548',
  email: 'lenin@gmail',
  telegram: 'lenin111',
  id: 3
)

Theme.create!(number: 1, title: 'Знакомство с HTML', group_id: 1)
Theme.create!(number: 2, title: 'Знакомство с CSS', group_id: 1)
Theme.create!(number: 3, title: 'Знакомство с Javascript', group_id: 3)
Theme.create!(number: 4, title: 'Знакомство с Ruby', group_id: 2)
Theme.create!(number: 5, title: 'CSS в Javascript ', group_id: 3)
Theme.create!(number: 6, title: 'Знакомство с Python', group_id: 5)
Theme.create!(number: 7, title: 'CSS and Python', group_id: 5)
Theme.create!(number: 8, title: 'Знакомство с Java', group_id: 6)
Theme.create!(number: 9, title: 'HTML in Javascript', group_id: 4)
Theme.create!(number: 10, title: 'CSS in Java', group_id: 6)
Theme.create!(number: 11, title: 'HTML in Python', group_id: 5)
Theme.create!(number: 12, title: 'Знакомство с Query ', group_id: 1)

Requisite.create!(
  owner: 'ТОО Образовательный центр "Аттрактор скул Алматы"',
  address: 'Казахстан, город Алматы, Алмалинский район, проспект Жибек Жолы, дом 135',
  bin: 171_240_019_162,
  bank: 'АО «Kaspi Bank»',
  iik: 'KZ88722S000001417077',
  bik: 'CASPKZKA',
  email: 'almaty@it-attractor.com',
  web: 'http://attractor-school.com/almaty',
  tel_1: '+7 (707) 186 00 11',
  tel_2: '+7 (707) 186 12 77',
  tel_3: '+7 (707) 186 00 33',
  function: 'Директор',
  function_2: 'Директора',
  fio: 'Гудов А.О.',
  fio_2: 'Гудова Александра Олеговича',
  based: 'Устава'
)

Lesson.create!(theme_id: 1, date: '12/02/2019', group_id: 1)
Lesson.create!(theme_id: 1, date: '15/02/2019', group_id: 2)
Lesson.create!(theme_id: 2, date: '18/02/2019', group_id: 6)
Lesson.create!(theme_id: 2, date: '19/02/2019', group_id: 2)
Lesson.create!(theme_id: 3, date: '17/02/2019', group_id: 3)
Lesson.create!(theme_id: 3, date: '15/03/2019', group_id: 4)
Lesson.create!(theme_id: 4, date: '15/03/2019', group_id: 2)
Lesson.create!(theme_id: 4, date: '15/01/2019', group_id: 1)
Lesson.create!(theme_id: 5, date: '18/01/2019', group_id: 3)
Lesson.create!(theme_id: 5, date: '18/01/2019', group_id: 4)
Lesson.create!(theme_id: 6, date: '25/02/2019', group_id: 5)
Lesson.create!(theme_id: 7, date: '11/03/2019', group_id: 5)
Lesson.create!(theme_id: 8, date: '20/02/2019', group_id: 6)
Lesson.create!(theme_id: 9, date: '15/01/2019', group_id: 4)
Lesson.create!(theme_id: 10, date: '11/01/2019', group_id: 6)
Lesson.create!(theme_id: 11, date: '12/02/2019', group_id: 5)
Lesson.create!(theme_id: 12, date: '14/02/2019', group_id: 1)
Lesson.create!(theme_id: 12, date: '23/02/2019', group_id: 2)
Lesson.create!(theme_id: 1, date: '22/02/2019', group_id: 6)
Lesson.create!(theme_id: 9, date: '24/02/2019', group_id: 3)

h1 = Homework.create!(date: '17/02/2019', student_id: 1, lesson_id: 1)
h1.homework_file.attach(
  io: File.open("app/assets/images/#{h1.id}.zip"),
  filename: "#{h1.id}.zip"
)
h2 = Homework.create!(date: '18/02/2019', student_id: 2, lesson_id: 1)
h2.homework_file.attach(
  io: File.open("app/assets/images/#{h2.id}.zip"),
  filename: "#{h2.id}.zip"
)
h3 = Homework.create!(date: '19/02/2019', student_id: 3, lesson_id: 1)
h3.homework_file.attach(
  io: File.open("app/assets/images/#{h3.id}.zip"),
  filename: "#{h3.id}.zip"
)
# h4 = Homework.create!(date: '26/02/2019', student_id: 13, lesson_id: 11)
# h4.homework_file.attach(
#   io: File.open("app/assets/images/#{h4.id}.zip"),
#   filename: "#{h4.id}.zip"
# )
# h5 = Homework.create!(date: '13/02/2019', student_id: 11, lesson_id: 16)
# h5.homework_file.attach(
#   io: File.open("app/assets/images/#{h5.id}.zip"),
#   filename: "#{h5.id}.zip"
# )
# h6 = Homework.create!(date: '19/02/2019', student_id: 5, lesson_id: 2)
# h6.homework_file.attach(
#   io: File.open("app/assets/images/#{h6.id}.zip"),
#   filename: "#{h6.id}.zip"
# )
# h7 = Homework.create!(date: '19/02/2019', student_id: 6, lesson_id: 5)
# h7.homework_file.attach(
#   io: File.open("app/assets/images/#{h7.id}.zip"),
#   filename: "#{h7.id}.zip"
# )
# h8 = Homework.create!(date: '19/02/2019', student_id: 7, lesson_id: 5)
# h8.homework_file.attach(
#   io: File.open("app/assets/images/#{h8.id}.zip"),
#   filename: "#{h8.id}.zip"
# )
# h9 = Homework.create!(date: '17/02/2019', student_id: 8, lesson_id: 6)
# h9.homework_file.attach(
#   io: File.open("app/assets/images/#{h9.id}.zip"),
#   filename: "#{h9.id}.zip"
# )
# h10 = Homework.create!(date: '19/02/2019', student_id: 9, lesson_id: 10)
# h10.homework_file.attach(
#   io: File.open("app/assets/images/#{h10.id}.zip"),
#   filename: "#{h10.id}.zip"
# )
# h11 = Homework.create!(date: '26/02/2019', student_id: 10, lesson_id: 11)
# h11.homework_file.attach(
#   io: File.open("app/assets/images/#{h11.id}.zip"),
#   filename: "#{h11.id}.zip"
# )
# h12 = Homework.create!(date: '19/02/2019', student_id: 4, lesson_id: 2)
# h12.homework_file.attach(
#   io: File.open("app/assets/images/#{h12.id}.zip"),
#   filename: "#{h12.id}.zip"
# )

Review.create!(title: 'Рецензия к домашке 1', content: 'Домашка решена на 5 баллов!', homework_id: 1, date: '19/02/2019', lesson_id: 1, rate: 8.6)
Review.create!(title: 'Рецензия к домашке 1', content: 'Домашка решена на отлично!', homework_id: 2, date: '19/02/2019', lesson_id: 1, rate: 10)
Review.create!(title: 'Рецензия к домашке 1', content: 'Домашка решена на отлично!', homework_id: 3, date: '19/02/2019', lesson_id: 1, rate: 10)
Review.create!(title: 'Рецензия к домашке 1', content: 'Домашка решена на 6 баллов!', homework_id: 4, date: '15/02/2019', lesson_id: 11, rate: 6.0)
Review.create!(title: 'Рецензия к домашке 1', content: 'Домашка решена на 7 баллов!', homework_id: 5, date: '19/02/2019', lesson_id: 16, rate: 7.0)
Review.create!(title: 'Рецензия к домашке 1', content: 'Домашка решена на 9.8 баллов!', homework_id: 6, date: '20/02/2019', lesson_id: 5, rate: 9.8)
Review.create!(title: 'Рецензия к домашке 1', content: 'Домашка решена на 9 баллов!', homework_id: 7, date: '19/02/2019', lesson_id: 5, rate: 9.0)
Review.create!(title: 'Рецензия к домашке 1', content: 'Домашка решена на 5 баллов!', homework_id: 8, date: '19/02/2019', lesson_id: 2, rate: 5)
