puts 'Creating Admin User...'
AdminUser.create_with(password: 'asdqwe123', password_confirmation: 'asdqwe123')
         .find_or_create_by(email: 'admin@example.com')
puts 'Creating Specialties...'
specialties = [
  {name: "Ingeniería Electrónica",             grade_level: 0},
  {name: "Ingeniería Mecánica",                grade_level: 0},
  {name: "Ingeniería Eléctrica",               grade_level: 0},
  {name: "Ingeniería Civil",                   grade_level: 0},
  {name: "Ingeniería en Sistemas",             grade_level: 0},
  {name: "Posgrado en Ingeniería Electrónica", grade_level: 1},
  {name: "Posgrado en Ingeniería Mecánica",    grade_level: 1},
  {name: "Posgrado en Ingeniería Eléctrica",   grade_level: 1},
  {name: "Posgrado en Ingeniería Civil",       grade_level: 1},
  {name: "Posgrado en Ingeniería en Sistemas", grade_level: 1},
  {name: "Tecnicatura en Higiene y Seguridad", grade_level: 2},
  {name: "Tecnicatura en Mecatrónica",         grade_level: 2},
  {name: "Tecnicatura en Programación",        grade_level: 2},
  {name: "Evento",                             grade_level: 3}
]

electronica_subjects = [
  { name: "Electrónica I", department: 1 },
  { name: "Electrónica II", department: 1 },
  { name: "Electrónica III", department: 1 },
  { name: "Electrónica IV", department: 1 },
  { name: "Electrónica V", department: 1 }
]

mecanica_subjects = [
  { name: "Mecánica I", department: 4 },
  { name: "Mecánica II", department: 4 },
  { name: "Mecánica III", department: 4 },
  { name: "Mecánica IV", department: 4 },
  { name: "Mecánica V", department: 4 }
]

electrica_subjects = [
  { name: "Eléctrica I", department: 2 },
  { name: "Eléctrica II", department: 2 },
  { name: "Eléctrica III", department: 2 },
  { name: "Eléctrica IV", department: 2 },
  { name: "Eléctrica V", department: 2 }
]

civil_subjects = [
  { name: "Civil I", department: 3 },
  { name: "Civil II", department: 3 },
  { name: "Civil III", department: 3 },
  { name: "Civil IV", department: 3 },
  { name: "Civil V", department: 3 }
]

sistemas_subjects = [
  { name: "Sistemas I", department: 0 },
  { name: "Sistemas II", department: 0 },
  { name: "Sistemas III", department: 0 },
  { name: "Sistemas IV", department: 0 },
  { name: "Sistemas V", department: 0 }
]

pos_electronica_subjects = [
  { name: "Posgrado Electrónica I", department: 1 },
  { name: "Posgrado Electrónica II", department: 1 },
  { name: "Posgrado Electrónica III", department: 1 },
  { name: "Posgrado Electrónica IV", department: 1 },
  { name: "Posgrado Electrónica V", department: 1 }
]

pos_mecanica_subjects = [
  { name: "Posgrado Mecánica I", department: 4 },
  { name: "Posgrado Mecánica II", department: 4 },
  { name: "Posgrado Mecánica III", department: 4 },
  { name: "Posgrado Mecánica IV", department: 4 },
  { name: "Posgrado Mecánica V", department: 4 }
]

pos_electrica_subjects = [
  { name: "Posgrado Eléctrica I", department: 2 },
  { name: "Posgrado Eléctrica II", department: 2 },
  { name: "Posgrado Eléctrica III", department: 2 },
  { name: "Posgrado Eléctrica IV", department: 2 },
  { name: "Posgrado Eléctrica V", department: 2 }
]

pos_civil_subjects = [
  { name: "Posgrado Civil I", department: 3 },
  { name: "Posgrado Civil II", department: 3 },
  { name: "Posgrado Civil III", department: 3 },
  { name: "Posgrado Civil IV", department: 3 },
  { name: "Posgrado Civil V", department: 3 }
]

pos_sistemas_subjects = [
  { name: "Posgrado Sistemas I", department: 0 },
  { name: "Posgrado Sistemas II", department: 0 },
  { name: "Posgrado Sistemas III", department: 0 },
  { name: "Posgrado Sistemas IV", department: 0 },
  { name: "Posgrado Sistemas V", department: 0 }
]

higiene_subjects = [
  { name: "Higiene I", department: 5 },
  { name: "Higiene II", department: 5 },
  { name: "Higiene III", department: 5 },
  { name: "Higiene IV", department: 5 },
  { name: "Higiene V", department: 5 }
]

mecatronica_subjects = [
  { name: "Mecatrónica I", department: 5 },
  { name: "Mecatrónica II", department: 5 },
  { name: "Mecatrónica III", department: 5 },
  { name: "Mecatrónica IV", department: 5 },
  { name: "Mecatrónica V", department: 5 }
]

programacion_subjects = [
  { name: "Programación I", department: 5 },
  { name: "Programación II", department: 5 },
  { name: "Programación III", department: 5 },
  { name: "Programación IV", department: 5 },
  { name: "Programación V", department: 5 }
]

evento_subjects = [
  { name: "Evento I", department: 5 },
  { name: "Evento II", department: 5 },
  { name: "Evento III", department: 5 },
  { name: "Evento IV", department: 5 },
  { name: "Evento V", department: 5 }
]

def create_specialty_subjects(specialty, subject_array)
  subject_array.each do |subject|
    Subject.create_with(specialty: specialty, department: subject[:department]).find_or_create_by(name: subject[:name])
  end
end

specialties.each do |specialty|
  current_specialty = Specialty.create_with(grade_level: specialty[:grade_level]).find_or_create_by(name: specialty[:name])

  case current_specialty.name
    when "Ingeniería Electrónica"
      create_specialty_subjects(current_specialty, electronica_subjects)
    when "Ingeniería Mecánica"
      create_specialty_subjects(current_specialty, mecanica_subjects)
    when "Ingeniería Eléctrica"
      create_specialty_subjects(current_specialty, electrica_subjects)
    when "Ingeniería Civil"
      create_specialty_subjects(current_specialty, civil_subjects)
    when "Ingeniería en Sistemas"
      create_specialty_subjects(current_specialty, sistemas_subjects)
    when "Posgrado en Ingeniería Electrónica"
      create_specialty_subjects(current_specialty, pos_electronica_subjects)
    when "Posgrado en Ingeniería Mecánica"
      create_specialty_subjects(current_specialty, pos_mecanica_subjects)
    when "Posgrado en Ingeniería Eléctrica"
      create_specialty_subjects(current_specialty, pos_electrica_subjects)
    when "Posgrado en Ingeniería Civil"
      create_specialty_subjects(current_specialty, pos_civil_subjects)
    when "Posgrado en Ingeniería en Sistemas"
      create_specialty_subjects(current_specialty, pos_sistemas_subjects)
    when "Tecnicatura en Higiene y Seguridad"
      create_specialty_subjects(current_specialty, higiene_subjects)
    when "Tecnicatura en Mecatrónica"
      create_specialty_subjects(current_specialty, mecatronica_subjects)
    when "Tecnicatura en Programación"
      create_specialty_subjects(current_specialty, programacion_subjects)
    when "Evento"
      create_specialty_subjects(current_specialty, evento_subjects)
  end
end
