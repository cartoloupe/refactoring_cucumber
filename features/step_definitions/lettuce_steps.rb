require_relative '../../burger_shop.rb'
require 'pry'

Given(/^a burger is ordered$/) do
  @burger = Burger.new
end

When(/^a bun is added$/) do
  add_bun_to @burger
end

When(/^some lettuce is added$/) do
  add_lettuce_to @burger
end

When(/^onions are added$/) do
  add_onions_to @burger
end

Then(/^the burger should have two buns$/) do
  expect(@burger.to_s.count{|item| item == "bun"}).to eq 2
end

Then(/^the burger should have lettuce in it$/) do
  expect(@burger.to_s).to include "lettuce"
end
