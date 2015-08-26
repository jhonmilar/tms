# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



#Seed Roles
["SuperAdmin", "Admin", "User", "Supervisor", "Transporter"].each do |role|
   Role.create! name: role
 end

# Seed For SuperAdmin
super_admins = []
super_admins << User.create!(:email => 'rajesh.rajsrv@gmail.com', :password => 'super_admin123$', :password_confirmation => 'super_admin123$')
super_admins << User.create!(:email => 'ghoshsabyasachi0@gmail.com', :password => 'super_admin123$', :password_confirmation => 'super_admin123$')

# Seed For Associations has_many Roles

s_role = Role.find_by_name("SuperAdmin")
super_admins.each do |s|
  UserRole.create! user_id: s.id, role_id: s_role.id
end
