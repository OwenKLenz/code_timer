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
      CodeTimer.timer("Simple Addition") do
        10000.times do
          1 + 1 
        end
      end
    end
    assert_includes(out, "Simple Addition")
  end
end

