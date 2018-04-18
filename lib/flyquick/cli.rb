#CLI controller
class FlyQuick::CLI

  def call
    puts "Welcome to FlyQuick. Available State Selections:"
    list_states
    make_selection
  end

  def list_states
    #get_states
    puts "--"
    puts "Florida"
    puts "Georgia"
    puts "Texas"
    puts "Other"
  end

  def make_selection
    puts "\nPlease enter the list number of your desired selection."
  end


end #EOC
