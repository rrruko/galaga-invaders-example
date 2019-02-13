# Ship
# x and y represent the coordinate of the center of the ship.
# For example, when y is 900, then the nose of the ship is at
# coordinate (x, y - height / 2).

class Ship

  WIDTH = 100
  HEIGHT = 200

  def initialize(x, y)
    @x = x
    @y = y
  end

  def move(distance)
    @x += distance
  end

  def ship_nose
    [@x, @y - HEIGHT / 2]
  end

  def draw
    # Ignore this
  end

end


=begin
Reflecting on Principle
-----------------------
1. What does the OOD promise to give us, as programmers?

2. What does Martin's SOLID acronym stand for? (Just expand the acronym.)
  
  Single responsibility principle
  Liskov substitution principle
  
3. True or False: It is our professional responsibility to always spend time designing before writing our code (designing now rather than later).

  It's important to spend some time designing but it's not possible to account for all or most future requirements. Writing code and iterating is a necessary part of the design process.

4. In Metz' TRUE acronym, what does the E stand for and what does it mean?

  Exemplary: well designed code should naturally encourages changes to the code to also follow good design.

5. How does applying SRP naturally lead to good design?

=end
