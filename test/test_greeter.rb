# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/my_cli_tool/greeter'

class TestGreeter < Minitest::Test
  def test_greet
    greeter = MyCliTool::Greeter.new('World')
    assert_equal 'Hello, World!', greeter.greet
  end
end
