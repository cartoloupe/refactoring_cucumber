require_relative '../../burger_shop.rb'

When(/^(?:some )?onions are added$/) do
  add_onions_to @burger
end

When(/^(\d+) onions? are added$/) do |count|
  count.to_i.times do
    add_onions_to @burger
  end
end

