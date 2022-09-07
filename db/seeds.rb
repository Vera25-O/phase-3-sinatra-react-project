puts "🌱 Seeding spices..."


puts "Deleting departments/employees data..."
Department.destroy_all
Employee.destroy_all

puts "Creating departments..."
finance_section = Department.create(title: "finance section")
IT_section = Department.create(title: "IT section")
surbodinate_staff = Department.create(title: "surbodinate staff")
general_staff = Department.create(title: "general staff")

puts "Creating employees..."
kate_kay = Employee.create(username: "Kate Kay", salary:90000,position:"Cashier", image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmo_Nuzkt2bB5GXUrDQWBeyX6t1TpnSAF0bxYHKjWa&s")
jay_lee = Employee.create(username: "Jay Lee", salary:60000,position:"Facilitator", image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmo_Nuzkt2bB5GXUrDQWBeyX6t1TpnSAF0bxYHKjWa&s" )
cindy_emma = Employee.create(username: "Cindy Emma", salary:40000, position:"Cook", image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmo_Nuzkt2bB5GXUrDQWBeyX6t1TpnSAF0bxYHKjWa&s")
prince_cha = Employee.create(username: "Prince Cha", salary:80000, position:"Database Management", image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmo_Nuzkt2bB5GXUrDQWBeyX6t1TpnSAF0bxYHKjWa&s")

puts "Creating tasks..."

Task.create( salary: 90000,username: "Vedy", department_id:finance_section.id, employee_id:kate_kay.id)
Task.create( salary: 60000,username: "Yasin", department_id:general_staff.id, employee_id:jay_lee.id)
Task.create(salary: 40000,username: "Cindy", department_id:surbodinate_staff.id, employee_id:cindy_emma.id)
Task.create(salary: 80000,username: "Cane", department_id:IT_section.id, employee_id:prince_cha.id)


puts "✅ Done seeding!"
