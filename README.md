# code_timer

### Code Timer
The CodeTimer class contains one method, #timer, which accepts a block of Ruby code, and outputs the time required to execute the block.

#### Documentation
timer(number_of_executions=1, code_name=nil) { block }

* Executes the appended block `number_of_executions` times.
* A name can be given to the code being executed to indicate which block is being executed in the even of multiple consecutive tests.