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
    puts "Here is a list of states to search for an airport:"
    puts "--"
    puts "Florida"
    puts "Georgia"
    puts "Texas"
    puts "Other"
  end

  def make_selection
    puts "\nPlease enter the list number of your desired selection. Type exit to end program."
    #ideally case block will use variable generation...50 states is inefficient to type out.
    input1 = nil
    while input1 != "exit"
      input1 = gets.strip.downcase
      case input1
      when "1"
        puts "\nListing of cities/airports within 1"
        break
      when "2"
        puts "\nListing of cities/airports within 2"
        break
      when "3"
        puts "\nListing of cities/airports within 3"
        break
      end
    end
  end

  def app_end
    puts "\nThank you for using Flyquick. Safe travels!"
  end

end #EOC
