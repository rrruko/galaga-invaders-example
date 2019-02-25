#!/usr/bin/env ruby

require_relative 'alien'
require_relative 'ship'
require_relative 'missile_collection'

class GalagaInvaders

  WIDTH = 1920
  HEIGHT = 1080

  attr_accessor :ship, :alien, :missiles

  def initialize
    @caption = "Galaga Invaders"
    @ship = Ship.new(WIDTH, HEIGHT)
    @alien = Alien.new
    @missiles = MissileCollection.new
  end

  def update
    missiles.update
  end

  def draw
    ship.draw
    alien.draw
    missiles.draw
  end

  def show
    while (true) do
      update
      draw
      key_pressed(gets.chomp) # Simulating a key interrupt.
    end
  end

  def key_pressed(key)
    if key == 'a'
      ship.move_left
    elsif key == 'd'
      ship.move_right
    elsif key == ' '
      missiles.add_from(ship)
    end
    if key == 'p'
      missiles.add_from(alien)
    end
  end

end

GalagaInvaders.new.show

=begin
Reflecting on Principle
-----------------------
1. What is "duck typing" and what does it have to do with polymorphism?

  A duck type is an implicit interface. Duck typing is writing code that
  depends on other objects only by expecting them to respond to a particular
  message, without worrying about the concrete class of the dependency.

  Duck typing is a kind of polymorphism because code that relies on duck types
  works for any concrete object that belongs to the duck type. In other words,
  it can operate on data with different shapes.

2. What are some common code smells that indicate the need for relying on a
   "duck type" rather than a concrete class?

  Branching based on the type of an object should be replaced with the use of
  a duck type. This includes the use of methods like `kind_of?`, `is_a?` or
  `responds_to?`.

3. True or False: Abstractions like duck typing make code explicitly easier to
   understand, vs. using concrete types.

  Metz says that duck types, like most abstractions, take some extra effort to
  understand, but this is worth the benefits we get from using them.

  I feel like using duck types often expresses intent better than explicitly
  branching on the concrete class of an object, so I'm not sure it is always
  more difficult to understand duck types.

=end
