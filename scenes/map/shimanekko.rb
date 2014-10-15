class Shimanekko < Sprite
  def initialize(*args)
    super
  end

  def update
    self.x += 1
    self.y -= 0.5
  end
end
