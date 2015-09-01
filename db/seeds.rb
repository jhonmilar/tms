# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

#Organisation
["DRG", "Mindfire", "MSCI"].each do |org|
    orga = Organization.create!(name: org, url: "http://#{org}.com")
    ["one","two"].each do |sub_org|
      orga.sub_organizations.create(domain_name: "#{sub_org}.#{org}.com")
    end
end

#Roles
["SuperAdmin", "Admin", "User", "Supervisor", "Transporter"].each do |role|
   Role.create! name: role
 end

#SuperAdmin
super_admins = []
super_admins << User.create!(:email => 'rajesh.rajsrv@gmail.com', :password => 'super_admin123$', :password_confirmation => 'super_admin123$')
super_admins << User.create!(:email => 'ghoshsabyasachi0@gmail.com', :password => 'super_admin123$', :password_confirmation => 'super_admin123$')

#Associations has_many Roles and Users
s_role = Role.find_by_name("SuperAdmin")
drg_org = Organization.find_by_name("DRG")
super_admins.each do |s|
  UserRole.create! user_id: s.id, role_id: s_role.id, sub_organization_id: drg_org.id
end


# #Routes
# sub_orga = SubOrganization.limit(3)
# points = ["HSR", "Kundanehalli", "ITPL"]
# points.each do |routes|
#   Route.create(name: routes, sub_organization_id: sub_orga[points.index(routes)].id)
# end

