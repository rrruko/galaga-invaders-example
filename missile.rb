class Missile
  attr_accessor :x, :y
  def initialize
    @x = 0
    @y = 0
  end

  def move_speed
    10
  end

  def move_up
    @y -= 10
  end

end
