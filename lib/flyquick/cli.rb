#CLI controller
class FlyQuick::CLI

  def call
    puts "Welcome to FlyQuick."
    list_states
    make_selection
    app_end
  end

  def list_states
    #get_states
    puts "Here is a list of states to search for an airport within:"
    puts "--"
    @states = FlyQuick::State_List.list_states
  end

  def make_selection
    puts "\nPlease enter the list number of your desired selection. Type exit to end program."
    #ideally case block will use variable generation...50 states is inefficient to type out.
    input1 = nil
    while input1 != "exit"
      input1 = gets.strip.downcase
      case input1
      when "1"
        puts "\nListing of cities/airports acquired..."
        break
      when "2"
        puts "\nListing of cities/airports acquired..."
        break
      when "3"
        puts "\nListing of cities/airports acquired..."
        break
      when "4"
        puts "\nListing of cities/airports acquired..."
        break
      when "exit"
        break
      else
        puts "Unrecognized input. Please enter a listed number or type exit(Menu 1)"
      end
    end

    puts "SELECTION MADE...Option #{input1} selected"
    puts input1 == "exit" ? "User selected to exit" : second_selection
  end

  #-----------------------------------------------------------------------
  def list_airports
    @airports = FlyQuick::Airport.list
    @airports.each.with_index(1) do |airport, i|
      puts "#{i} #{airport} (FAA IDENTIFIER)"
      # puts "End of Airport List"
    end
  end

  def airport_method(selected_airport)
    @airport_object = FlyQuick::Airport.current(selected_airport)
  end

  #-----------------------------------------------------------------------
  def second_selection
    list_airports
    puts "\nSelect by typing the number associated with desired airport. Type 'restart' or 'exit' to return to top menu or close."
    input2 = nil
    while input2 != "exit"
      input2 = gets.strip.downcase

      if input2.to_i > 0 && input2 != "exit"
        selected_airport = @airports[input2.to_i-1] #user selected airport, from previously provided list.
        #Need to dive deeper than list and scrape from airport specific page for attributes, such as name, tower, etc.
  #-----------------------------------------------------------------------
        airport_method(selected_airport)
        puts "#{@airport_object.name}"
        puts "Ident: #{@airport_object.ident}"
        puts "Tower: #{@airport_object.tower}"
        break
      elsif input2 == "restart"
        list_states
        return make_selection
      elsif input2 == "exit"
        break
      else
        puts "Unrecognized input. Please input a listed number, type restart, or type exit"
      end
    end
    puts "Airport data based on selection #{input2}..."
  end

  def app_end
    puts "\nThank you for using Flyquick. Safe travels!"
  end

end #EOC
