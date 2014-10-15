class Bird < Sprite 
  def initialize(*args)
    super
    @d=60
   @speed=0.01
end

  def update
      self.x += Math.cos(@d) * @speed
      self.y += Math.sin(@d) * @speed
      @d += (1.0 / 30)
      @speed += (1.0 / 30)
  end



end


