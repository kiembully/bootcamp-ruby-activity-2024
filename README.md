# Text-based arena RPG activity


## Activity
0. Fork this repo and clone it to your machine and open the folder in your preferred editor

1. In `player.rb`, Define a method where player can heal using potions.
Hint: use `self.hp` and `self.potions` to make the instance object change its attributes.
You can think of this like in javascript, `this.state.hp` `this.state.potions`

2. In `arena.rb`, Create an instance variable for player and enemy

3. In `arena.rb`, Add a reader for both player and enemy

4. Implement actions where Player and Enemey will both fight. Player and Enemy will do a random action.
ACTIONS will be: attack, and use_potion
Make sure when choosing use_potion, and when no potions left,
let the player/enemy choose another actions
HINT: use `.sample` to randomize which object to use from array
```
ARRAY.sample
```

## Bonus Challenge!!! (Only when there's an extra time)
5. Create a method where player can defend in `arena.rb`. And add it to your actions

6. add randomness for the damage like critical chance

7. Instead of doing random actions, make yourself a player where you can choose your actions.
Use `gets.chomp` to get the user's input
```
foo = gets.chomp # Inputs bar
puts foo # Output: bar
```

## To start the game. Run this:
Run irb in your terminal
```
load "player.rb"
load "arena.rb"

player = Player.new("John Wick")
enemy = Player.new("Marquis")

Arena.new(player: player, enemy: enemy).start
```
