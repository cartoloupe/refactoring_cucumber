require_relative '../../burger_shop.rb'
require 'pry'

When(/^some lettuce is added$/) do
  add_lettuce_to @burger
end

Then(/^the burger should have lettuce in it$/) do
  expect(@burger.to_s).to include "lettuce"
end
