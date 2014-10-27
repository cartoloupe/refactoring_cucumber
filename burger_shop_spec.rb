require_relative 'burger_shop.rb'

describe Burger do
  it 'you can add ingredients to it' do
    burger = Burger.new
    add_lettuce_to burger
    expect(burger).to include "lettuce"
  end
end
