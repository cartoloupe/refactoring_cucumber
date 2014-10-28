class Burger
  attr_accessor :stack
  def initialize
    @stack = []
  end

  def add ingredient
    @stack.push ingredient
  end

  def to_s
    @stack
  end

  def include? ingredient
    @stack.include? ingredient
  end
end

def add_lettuce_to burger
  burger.add "lettuce"
end

def add_tomatoes_to burger
  burger.add "tomatoes"
end

def add_mayonnaise_to burger
  burger.add "mayonnaise"
end

def add_bun_to burger
  burger.add "bun"
end

def add_onions_to burger
  burger.add "onions"
end


