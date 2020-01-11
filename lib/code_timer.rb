require 'bundler/setup'
require_relative 'code_timer_error'

class CodeTimer
  def self.timer(code_name=nil)
    unless block_given?
      raise NoBlockForTimerError.new("Must include a block with calls to CodeTimer::timer.")
    end

    puts "Executing #{code_name ? code_name : code}..." if code_name
    start_time = Time.now
    yield
    puts "The code ran in #{Time.now - start_time} seconds."
  end
end

CodeTimer.timer ("cheese") do
  puts "cheese"
end