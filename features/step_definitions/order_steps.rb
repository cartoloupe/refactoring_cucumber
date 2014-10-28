require_relative '../../burger_shop.rb'

Given(/^a (?:half )?burger is ordered$/) do
  @burger = Burger.new
end

