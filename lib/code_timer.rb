require 'bundler/setup'

require_relative 'code_timer_error'

class CodeTimer
  def self.timer(code_name=nil)
    unless block_given?
      raise NoBlockForTimerError.new("Must include a block with calls to CodeTimer::timer.")
    end

    start_time = Time.now
    yield
    puts "Code Name: #{code_name}" if code_name
    puts "The code ran in #{Time.now - start_time} seconds."
  end
end