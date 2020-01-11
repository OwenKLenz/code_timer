require 'bundler/setup'

require 'minitest/autorun'
require_relative '../lib/code_timer'

class CodeTimerTest < MiniTest::Test
  def test_successful_output_for_simple_block
    out, error = capture_io do
      CodeTimer.timer do
        10000.times do
          1 + 1 
        end
      end
    end
    assert_includes(out, "The code ran in")
  end

  def test_raises_noblockfortimer_error
    assert_raises(NoBlockForTimerError) do
      CodeTimer.timer
    end
  end

  def test_custom_code_name
    out, error = capture_io do
      CodeTimer.timer(1, "Simple Addition") do
        10000.times do
          1 + 1 
        end
      end
    end
    assert_includes(out, "Simple Addition")
  end

  def test_multiple_executions
    counter = 0

    CodeTimer.timer(1000) do
      counter += 1
    end
    assert_equal(1000, counter)
  end
end

