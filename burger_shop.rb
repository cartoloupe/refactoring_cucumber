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

def method_missing(meth, *args, &block)
  if meth.to_s =~ /^add_(crispy_bun|bun)_to$/
    add($1, *args, &block)
  else
    super # You *must* call super if you don't handle the
          # method, otherwise you'll mess up Ruby's method
          # lookup.
  end
end

def add(ingredient, burger, &block)
  burger.add ingredient.gsub('_', ' ')
end

def add_onions_to burger
  burger.add "onions"
end


