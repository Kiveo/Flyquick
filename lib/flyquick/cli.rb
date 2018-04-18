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
    input = gets.strip.downcase
    #ideally case block will use variable generation...50 states is inefficient to type out.
    while input != "exit"
      case input
      when "1"
        puts "Listing of cities/airports within 1"
        break
      when "2"
        puts "Listing of cities/airports within 2"
      when "3"
        puts "Listing of cities/airports within 3"
      end
    end

    def app_end
      puts "Thank you for using Flyquick. Safe travels!"
    end

  end


end #EOC
