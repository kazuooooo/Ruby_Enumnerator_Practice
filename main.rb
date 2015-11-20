require './person.rb'
require './department.rb'
require './company.rb'
require 'pry'



aDepartment = Department.new.
         add(Person.new("Tarou",21)).
         add(Person.new("Hanako",15)).
         add(Person.new("Jiro",15))
bDepartment = Department.new.
         add(Person.new("Teru",25)).
         add(Person.new("yamada",15)).
         add(Person.new("kondo",15))
cDepartment = Department.new.
         add(Person.new("Tsa",21)).
         add(Person.new("hako",15)).
         add(Person.new("ken",15))
company = Company.new
company.add(aDepartment)
company.add(bDepartment)
company.add(cDepartment)

company.each do |department|
  
  # map
  # puts department.map{|person|
  #   person.name << "zakuro"
  #   }

  # find
  # puts department.find{|person|
  #   person.age == 15
  # }.name

  # find_all
  # teen = department.find_all{|person|
  #   person.age == 15
  # }
  # teen.each do |person|
  #   p person.name
  # end

  # all?
  # puts  department.all? do |person|
  #           person.age > 10
  #       end
  # any?
  # puts  department.any? do |person|
  #           person.age > 100
  #       end
  # drop
  people = department.drop(1) do |person|
    person.name
  end
  binding.pry
  people.each do |person|
    p person.name
  end
end