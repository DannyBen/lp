module Monsters
  class Monster
    attr_accessor :friends

    def initialize(first, last, middle = nil)
      @first = first
      @last = last
      @middle = middle
    end
  end
end

class Monster
  attr_accessor :friends, :skills

  def initialize
    @friends = []
    @skills = []
  end

  def eat; end

  def sleep; end

  def scare; end
end
