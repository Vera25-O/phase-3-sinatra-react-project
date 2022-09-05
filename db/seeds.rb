puts "🌱 Seeding spices..."


puts "Deleting department/employee data..."
Department.destroy_all
Employee.destroy_all

puts "Creating departments..."
mean_girls = Department.create(title: "Mean Girls", box_office_earnings: 129_000_000)
spice_world = Department.create(title: "Spice World", box_office_earnings: 151_000_000)

puts "Creating employees..."
lindsay_lohan = Employee.create(username: "Lindsay Lohan")
tina_fey = Employee.create(username: "Tina Fey")
baby_spice = Employee.create(username: "Emma Bunton")
ginger_spice = Employee.create(username: "Geri Halliwell")

puts "Creating roles..."
# ***********************************************************
# * TODO: create roles! Remember, a role belongs to a movie *
# * and a role belongs to an actor.                         *
# ***********************************************************
# Create Roles Here
Task.create(salary: 40000,username: "Vedy", department_id:mean_girls.id, employee_id:lindsay_lohan.id)
Task.create(salary: 85000,username: "Yasin", department_id:spice_world.id, employee_id:tina_fey.id)
Task.create(salary: 60000,username: "Kate", department_id:mean_girls.id, employee_id:scary_spice.id)
Task.create(salary: 45000,username: "Cane", department_id:spice_world.id, employee_id:ginger_spice.id)


puts "Seeding done!"

puts "✅ Done seeding!"
