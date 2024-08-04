require_relative 'my_cli_tool/version'
require_relative 'my_cli_tool/greeter'

module MyCliTool
  def self.greet(name)
    greeter = MyCliTool::Greeter.new(name)
    greeter.greet
  end
end
