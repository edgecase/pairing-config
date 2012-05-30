module RailsBootstrap
  module Actions
    def ask?(message)
      puts message
      STDIN.gets.chomp
    end

    def yes?(message)
      result = ask? message
      result.downcase[0] == 'y'
    end
  end
end

