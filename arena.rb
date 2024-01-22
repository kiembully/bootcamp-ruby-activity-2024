class Arena
  # 3. add a reader for both player and enemy
  attr_reader :player, :enemy

  def initialize(player:, enemy:)
    # 2. Create an instance variable for player and enemy
    @player = player
    @enemy = enemy
  end

  def start
    puts "Welcome to the Arena!"
    puts "You are fighting #{enemy.name}!"
    while player.hp > 0 && enemy.hp > 0
      # 4. Implement actions where Player and Enemey will both fight. Player and Enemy will do a random action.
      # ACTIONS are: attack and use_potion
      do_random_action(player, enemy)
      do_random_action(enemy, player)

      puts "Your health: #{player.hp}"
      puts "#{enemy.name}'s health: #{enemy.hp}"
    end

    if player.hp > 0
      puts "You win!"
    else
      puts "You lose!"
    end
  end

  private

    def attack(attacker, target)
      damage = attacker.atk - target.def
      target.hp -= damage

      puts "#{attacker.name} attacks #{target.name} for #{damage} damage!"
    end

    def use_potion(character)
      character.use_potion
    end

    def do_random_action(attacker, target)
      case rand(1..3)
      when 1
        attack(attacker, target)
      when 2
        use_potion(attacker)
      end
    end

    # 5.Challenge: Create a method where player can defend
    # Specs: Defending can make the defender's defense x1.5 in 1 turn
end
