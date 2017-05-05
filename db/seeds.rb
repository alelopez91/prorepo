# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
Specialty.create([{name: "Ingeniería en Sistemas de Información", grade_level: "Grado"}, {name: "Ingeniería Electrónica", grade_level: "Grado"},
  {name: "Ingeniería Mecánica", grade_level: "Grado"}, {name: "Ingeniería Eléctrica", grade_level: "Grado"}, {name: "Ingeniería Civil", grade_level: "Grado"},
  {name: "Tecnicatura en Higiene y Seguridad", grade_level: "Tecnicatura"}, {name: "Tecnicatura en Mecatrónica", grade_level: "Tecnicatura"},
  {name: "Tecnicatura en Programación", grade_level: "Tecnicatura"}])