require_relative '../../burger_shop.rb'

When(/^(?:some )?onions are added$/) do
  add_onions_to @burger
end

When(/^(\d+) onions? are added$/) do |count|
  count.to_i.times do
    add_onions_to @burger
  end
end

Then(/^the burger should have (\d+) onions in it$/) do |onion_count|
  expect(@burger.to_s.count{|item| item == "onions"}).to eq onion_count.to_i
end
