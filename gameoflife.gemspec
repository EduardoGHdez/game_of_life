require 'rake'
Gem::Specification.new do |s|
    s.name          = 'gameoflife'
    s.version       = '0.0.0'
    s.date          = '2018-09-26'
    s.summary       = "This is a game of life project for MagmaHackers program"
    s.description   = "With this gem, you can have an Object GameOfLife and test your own patterns"
    s.authors       = ["Eduardo Hernandez"]
    s.email         = 'egh1795@gmail.com'
    s.files         = ["Gemfile", "Gemfile.lock", "README.md", "lib/board.rb", "lib/game_of_life.rb", "lib/cell.rb"]
    s.license       = 'MIT'
    s.homepage      = 'https://github.com/EduardoGHdez/game_of_life'
end
