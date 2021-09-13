# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

fecha_ini = "01-01-2021".to_date
fecha_fin = "28-02-2021".to_date

fechas = (fecha_ini..fecha_fin).to_a

valor_ini = 29069
valor_fin = 29287

valores = (valor_ini..valor_fin).to_a

fechas.each do |fecha|
    Uf.create(fecha: fecha, value: valores.sample)
end