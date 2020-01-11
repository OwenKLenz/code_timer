Gem::Specification.new do |s|
  s.name        = "code_timer"
  s.version     = "1.1.0"
  s.summary     = "Code execution timer"
  s.description = "This is a gem that provides a simple interface for "\
                  "code runtimes. Now accepts an integer argument to perform "\
                  "a specific number of iterations of the timed code."
  s.authors     = ['Owen Lenz']
  s.files       = ['lib/code_timer.rb', 
                  'lib/code_timer_error.rb',
                  'test/code_timer_test.rb']
end