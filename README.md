# Game of life :earth_americas:

This is my game of life code, made with Ruby :gem:

## Feature required

- [x] Create the game logic
- [x] Create the gem that contains that logic and verify that can be used correctly
- [ ] Create a terminal interface

## Not required, but nice to have

- [ ] Create GUI interface (Shoes or Gosu)
- [ ] Create a web app
- [ ] Create API

## What is game of life?
It is the product of a bored mathematician (John Horton Conway). 
Just kidding. Conway solved the problem that John von Neumann've propossed in the 40's. 
He  find an hypothetical machine that had the ability to create copies of itself and he got a mathematical model for such a machine with some rules in a board.

You can find more information [here](http://web.stanford.edu/~cdebs/GameOfLife/) 

Rules:
1. Any live cell with fewer than two live neighbors dies, as if caused by underpopulation. 
2. Any live cell with more than three live neighbors dies, as if by overcrowding.
3. Any live cell with two or three live neighbors lives on to the next generation.
4. Any dead cell with exactly three live neighbors becomes a live cell.

Well. In this little project i put this rules in a class `GameOfLife`. With this class you could test your patterns, and see how it works.

## Getting started
To use this gem, follow next steps:
1. Clone the repo
2. Install gem
```gem install gameoflife-0.0.0.gem```
3. Run `Interactive ruby`
```irb```
4. Import the gem
``` require 'gameoflife' ```

5. Instance the object GameOfLife
``` game = GameOfLife.new```
6. There is an example, you can use it :)
```game.example```

## Methods
* `new(size: 10)`
Creates a 10 size board for your game by default, if you don't specify it.
* `randomCell`
Turns alive a random cell. It returns wich cell was modified. (It returns row and col)
* `selectCell(row:nil, col:nil)`
It inverts the state of chosen cell.
* `tick`
Apply the game of life rules, and update all board

* `display`
Print the board

* `example`

Create an interactive board. Where you can see how it works and choose more cells 

## OOP Design
* Cell: it is more like a new data type or a structure. It has two attributes: actual_state and next_state. I use for save two states in a cell.
* Board: In this Object a create a cells matrix
* GameOfLife: This class containt all logic. It have an attribute board, methods to change any cell state in the board, and the most important (i guess) is the 'tick' method. Because here i applied the 4 game of life rules (under and over population, alive, dead, or reproduction)


