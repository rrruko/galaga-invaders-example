module Entity
  include Damageable
  include Drawable
  include Structure
  def initialize_entity(args)
    initialize_damageable(args)
    initialize_drawable(args)
    initialize_structure(args)
  end
end
