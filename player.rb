class Player
  MAX_POTIONS_QTY = 5.freeze
  HEAL_POINTS = 15.freeze

  attr_accessor :name, :potions, :hp
  attr_reader :atk, :def

  def initialize(name)
    @name = name
    @hp = 100
    @atk = 20
    @def = 5
    @potions = MAX_POTIONS_QTY
  end

  # 1. Create a method where player can heal using potions and reduce the player's potion amount
  # Specs: Using potion can heal 15 hp
  def use_potion
    # Prevent using of potions when no more potions left. Hint: use guard clause here
    # enter code here
    return puts "#{name} has no potions left." if potions.zero?

    self.hp += HEAL_POINTS
    self.potions -= 1

    puts "#{name} used potions."
  end
end
