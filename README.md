# Code Timer

A simple benchmarking gem for Ruby code.

### Features
- Determine approximate runtimes of various pieces of Ruby code
- Specify how many times you'd your code to be run
- Provide a name for each piece of code enclosed in a `timer` block to disambiguate when running multiple timers.

### Implementation 
The CodeTimer class contains one method, `timer`, which accepts a block of Ruby code, and outputs the time required to execute the block.

### Documentation
CodeTimer.timer(number_of_executions=1, code_name=nil) { block }

### Example

```rb
require "code_timer"

CodeTimer.timer(100000000, "Some math") do
  2 + 2
end

# Executing some math...
# The code ran in 7.5966267 seconds.

CodeTimer.timer(100000000, "Some other math") do
  2 * 2
end

# Executing some other math...
# The code ran in 8.0201823 seconds.
```
