module MyCliTool
  class Greeter
    FILE_PATH = 'names.txt'

    def initialize(name)
      @name = name
    end

    def greet
      save_name(@name)
      "Hello, #{@name}!"
    end

    def save_name(name)
      File.open(FILE_PATH, 'a') do |file|
        file.puts(name)
      end
    end

    def self.load_names
      return [] unless File.exist?(FILE_PATH)

      File.read(FILE_PATH).split("\n")
    end
  end
end
