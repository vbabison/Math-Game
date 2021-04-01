class Player
  LIVES = 3

  attr_accessor :name, :life

  def initialize(n)
    self.name = n
    self.life = LIVES
  end
end