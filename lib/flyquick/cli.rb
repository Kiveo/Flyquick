#CLI controller
class FlyQuick::CLI

  def call
    puts "Welcome to FlyQuick."
    list_states
    make_selection
    app_end
  end

  #-----------------------------------------------------------------------
  def list_states
    #get_states
    puts "Here is a list of states to search for an airport within:"
    puts "--"
    @states = FlyQuick::State.list  #for user readability. Full state names
    @shorts = FlyQuick::State.short_list  #for url alteration. Shorthand state names such as GA, FL, etc.
    @states.each.with_index(1) do |state, i|
      puts "#{i} #{state} (USA)"
    end
  end

  def state_method(selected_state)
    # @state_object = FlyQuick::Airport.state_selector(selected_state)
    FlyQuick::Airport.state_selector(selected_state)
  end

  #-----------------------------------------------------------------------
  def make_selection
    puts "\nPlease enter the list number of your desired selection. Type exit to end program."
    #ideally case block will use variable generation...50 states is inefficient to type out.
    input1 = nil
    while input1 != "exit"
      input1 = gets.strip.downcase

      if input1.to_i > 0 && input1.to_i < 52 && input1 != "exit"
        puts "For Reference: #{@states[input1.to_i-1]}"
        selected_state = @shorts[input1.to_i-1]
        state_method(selected_state)
        break
      elsif input1 == "exit"
        break
      else
        puts "Unrecognized input. Please input a listed number or type exit"
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

      if input2.to_i > 0 && input2.to_i < @airports.length+1 && input2 != "exit"
        selected_airport = @airports[input2.to_i-1] #user selected airport, from previously provided list.
        #Need to dive deeper than list and scrape from airport specific page for attributes, such as name, tower, etc.
        airport_method(selected_airport)
        puts "  #{@airport_object.name}"
        puts "  Ident: #{@airport_object.ident}" #faa identifier
        puts "  #{@airport_object.tower}"  #comm frequency
        puts "  #{@airport_object.wx}" #wx frequency
        puts "#{@airport_object.runways.gsub(/R/, "  R")}" #weather frequency/phone
        puts "\nPlease input an airport number, type restart, or type exit"
        # break
      elsif input2 == "restart"
        list_states
        return make_selection
      elsif input2 == "exit"
        break
      else
        puts "Unrecognized input. Please input a listed number, type restart, or type exit"
      end
    end
  end

  def app_end
    puts "Thank you for using Flyquick. Safe travels!"
  end

end #EOC
