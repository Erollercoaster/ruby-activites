class Car
  def initialize(company, model, year)
    @company = company
    @model = model
    @year = year
  end

  def details
    "#{@year} #{@company} #{@model}"
  end

  def update_year(new_year)
    @year = new_year
    puts "Year updated to #{@year}."
  end
end


#test 

my_car = Car.new("Toyota", "Camry", 2020)
puts "Car Details: #{my_car.details}"
my_car.update_year(2022)
puts "Updated Car Details: #{my_car.details}"
