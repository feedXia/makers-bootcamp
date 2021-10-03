class Security
  attr_reader :locked

  def initialize
    # @diary = diary
    @locked = true
  end

  def lock
    @locked = true
  end

  def unlock
    @locked = false
  end

  def locked?
    locked
  end
end
