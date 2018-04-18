#CLI controller
class FlyQuick::CLI

  def call
    puts "Hello, and welcome, to the FlyQuick."
    list_states
  end

  def list_states
    #get_states
    puts "Florida"
    puts "Georgia"
    puts "Texas"
    puts "Other"
  end



end #EOC
