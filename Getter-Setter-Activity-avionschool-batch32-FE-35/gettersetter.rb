require 'rspec'

class Profile
  attr_accessor :full_name, :age, :address, :work

  def initialize(full_name, age, address, work)
    @full_name = full_name
    @age = age
    @address = address
    @work = work
  end
end

 my_profile = Profile.new('Juan', 18, 'Bulacan', 'Instructor')

  puts "Initial Full Name: #{my_profile.full_name}"
  puts "Initial Age: #{my_profile.age}"
  puts "Initial Work: #{my_profile.work}"

 my_profile = Profile.new('Cruz', 25 , 'Laguna', 'Software Engineer')

  puts "Updated Full Name: #{my_profile.full_name}"
  puts "Updated Age: #{my_profile.age}"
  puts "Updated Work: #{my_profile.work}"

