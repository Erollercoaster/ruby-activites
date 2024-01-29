class GamingMouse
  def initialize(brand, model)
    @brand = brand
    @model = model
  end

  def click
    puts "Clicking the mouse. Very long implementation of the click method."
  end
end

class LogitechMouse < GamingMouse
  def click
    puts "Clicking the #{@brand} #{@model} mouse by Logitech."
  end
end

class RazerMouse < GamingMouse
  def click
    puts "Clicking the #{@brand} #{@model} mouse by Razer."
  end
end

# test:
logitech_mouse = LogitechMouse.new("Logitech", "GPro")
logitech_mouse.click

razer_mouse = RazerMouse.new("Razer", "DeathAdder")
razer_mouse.click
