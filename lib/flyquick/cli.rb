#CLI controller
class FlyQuick::CLI

  def call
    puts "Welcome to FlyQuick."
    list_states
    make_selection
    # list_airports
    # second_selection
    app_end
  end

  def list_states
    #get_states
    puts "Here is a list of states to search for an airport within:"
    puts "--"
    puts "1. Florida"
    puts "2. Georgia"
    puts "3. Texas"
    puts "4. Other"
  end

  def make_selection
    puts "\nPlease enter the list number of your desired selection. Type exit to end program."
    #ideally case block will use variable generation...50 states is inefficient to type out.
    input1 = nil
    while input1 != "exit"
      input1 = gets.strip.downcase
      case input1
      when "1"
        puts "\nListing of cities/airports within FL acquired..."
        break
      when "2"
        puts "\nListing of cities/airports within GA acquired..."
        break
      when "3"
        puts "\nListing of cities/airports within TX acquired..."
        break
      when "4"
        puts "\nListing of cities/airports within XYZ acquired..."
        break
      else
        puts "Unrecognized input. Please enter a listed number or type exit"
      end
    end
    puts "SELECTION MADE...Option #{input1} selected"
    # input1 == "exit" ? "User selected to exit." : second_selection
    puts input1 == "exit" ? "User selected to exit" : second_selection
  end

  def list_airports
    #get_airports
    puts "Here is a list of airports to select amongst:"
    puts "--"
    puts "1. KBKV"
    puts "2. KLAL"
    puts "3. KZPH"
    puts "4. Other"
  end

  def second_selection
    list_airports
    puts "\nSelect by typing the number associated with desired airport. Type 'restart' or 'exit' to return to top menu or close."
    #ideally case block will use variable generation...50 states is inefficient to type out.
    input2 = nil
    while input2 != "exit"
      input2 = gets.strip.downcase
      case input2
      when "restart"
        puts "restarting..."
        list_states
        return make_selection                 #ADJUST MECHANISM HERE
      when "1"
        puts "\nAirport 1 selected"
        break
      when "2"
        puts "\nAirport 2 selected"
        break
      when "3"
        puts "\nAirport 3 selected"
        break
      when "4"
        puts "\nAirport 4 selected"
        break
      else
        puts "Unrecognized input. Please enter a listed number, type restart, or type exit"
      end
    end
    puts "Airport data based on selection #{input2}..."
  end

  def app_end
    puts "\nThank you for using Flyquick. Safe travels!"
  end

end #EOC
