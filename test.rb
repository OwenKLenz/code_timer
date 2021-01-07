require "./lib/code_timer"
CodeTimer.timer(100000000, "Some math") do
  2 + 2
end

CodeTimer.timer(100000000, "Some other math") do
  2 * 2
end
