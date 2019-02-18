class MissileCollection

  attr_reader :missiles

  def initialize
    @missiles = []
  end

  def add(missile)
    missiles << missile
  end

  def launch_for(ship)
    new_missile = Missile.new(ship.muzzle_location, ship.ordnance_velocity)
    add(new_missile)
  end

  def update
    missiles.each(&:move)
  end

  def draw
    missiles.each(&:draw)
  end

end
