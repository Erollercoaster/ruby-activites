class Phone
  def initialize(brand)
    @brand = brand
  end

  def make_call(number)
    puts "Default Call"
  end

  def send_message(number, message)
    puts "Default Send message"
  end
end

class Smartphone < Phone
  def make_call(number)
    puts "Calling #{number} from #{@brand} smartphone."
  end

  def send_message(number, message)
    puts "Sending message '#{message}' to #{number} from #{@brand} smartphone."
  end
end

class FeaturePhone < Phone
  def make_call(number)
    puts "Dialing #{number} from #{@brand} feature phone."
  end

  def send_message(number, message)
    puts "Texting '#{message}' to #{number} from #{@brand} feature phone."
  end
end

# test:
smartphone = Smartphone.new("Samsung")
smartphone.make_call("123-456-7890")
smartphone.send_message("123-456-7890", "Hello!")

feature_phone = FeaturePhone.new("Apple")
feature_phone.make_call("987-654-3210")
feature_phone.send_message("987-654-3210", "Hi there!")
