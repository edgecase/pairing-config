module RailsBootstrap
  module Actions
    def yes?(message)
      puts message
      STDIN.gets.chomp.downcase[0] == 'y'
    end
  end
end

