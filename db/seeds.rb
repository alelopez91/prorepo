puts 'Creating Admin User...'
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
puts 'Creating Specialties...'
Specialty.create([{name: "Ingeniería Electrónica", grade_level: 0}, {name: "Ingeniería Mecánica", grade_level: 0},
  {name: "Ingeniería Eléctrica", grade_level: 0}, {name: "Ingeniería Civil", grade_level: 0},
  {name: "Tecnicatura en Higiene y Seguridad", grade_level: 2}, {name: "Tecnicatura en Mecatrónica", grade_level: 2},
  {name: "Tecnicatura en Programación", grade_level: 2}])