puts "🌱 Seeding spices..."


puts "Deleting department/employee data..."
Department.destroy_all
Employee.destroy_all

puts "Creating departments..."
mean_girls = Department.create(title: "Mean Girls", box_office_earnings: 129_000_000)
spice_world = Department.create(title: "Spice World", box_office_earnings: 151_000_000)

puts "Creating employees..."
kate_kay = Employee.create(username: "Kate Kay")
jay_lee = Employee.create(username: "Jay Lee")
cindy_emma = Employee.create(username: "Cindy Emma")
prince_cha = Employee.create(username: "Prince Cha")

puts "Creating taskss..."

Task.create(salary: 40000,username: "Vedy", department_id:finance_section.id, employee_id:kate_kay.id)
Task.create(salary: 85000,username: "Yasin", department_id:general_staff.id, employee_id:jay_lee.id)
Task.create(salary: 60000,username: "Kate", department_id:surbodinate_staff.id, employee_id:cindy_emma.id)
Task.create(salary: 45000,username: "Cane", department_id:IT_section.id, employee_id:prince_cha.id)


puts "Seeding done!"

puts "✅ Done seeding!"
