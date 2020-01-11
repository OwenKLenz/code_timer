require 'bundler/setup'
require_relative 'code_timer_error'

class CodeTimer
  def self.timer(number_of_executions=1, code_name=nil)
    unless block_given?
      raise NoBlockForTimerError.new("Must include a block with calls to CodeTimer::timer.")
    end

    puts "Executing #{code_name ? code_name.downcase : "code"}..."
    start_time = Time.now
    number_of_executions.times do
      yield
    end
    puts "The code ran in #{Time.now - start_time} seconds."
  end
end