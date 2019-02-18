class Missile

  attr_accessor :x, :y, :velocity

  def initialize(position, velocity)
    @x = position.x
    @y = position.y
    @velocity = velocity
  end

  def launch(velocity)
    @velocity = velocity
  end

  def move
    self.y += velocity
  end

  def draw
    puts self
  end

  def to_s
    "#{falling? ? '☄️' : '🚀'} (#{x}, #{y})"
  end

  def falling?
    velocity > 0
  end

end
