module MyCliTool
  class Greeter
    FILE_PATH = 'names.txt'

    def initialize(name)
      @name = name
    end

    def greet
      if save_name(@name)
        "Hello, #{@name}!"
      else
        "Hello again, #{@name}!"
      end
    end

    def save_name(name)

      existing_names = self.class.load_names
      return false if existing_names.include?(name)

      File.open(FILE_PATH, 'a') do |file|
        file.puts(name)
      end
      true
    end

    def self.load_names
      return [] unless File.exist?(FILE_PATH)

      File.read(FILE_PATH).split("\n")
    end

    def self.remove_name(name)
      names = load_names
      if names.delete(name)
      File.open(FILE_PATH, 'w') do |file|
        names.each do |name|
          file.puts(name)
        end
      end
        return "Name removed: #{name}"
      else
        return "Name not found: #{name}"
      end
    end

    def self.count_names
      load_names.uniq.count
    end
    
  end
end
