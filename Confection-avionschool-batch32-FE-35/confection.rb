class Confection
  def prepare
    puts "Baking at 350 degrees for 25 minutes."
  end
end

class Cupcake < Confection
  def prepare
    super
    puts "Applying frosting"
  end
end

class BananaCake < Confection
end

#Test
cupcake = Cupcake.new
puts "Preparing Cupcake:"
cupcake.prepare

banana_cake = BananaCake.new
puts "\nPreparing Banana Cake:"
banana_cake.prepare

