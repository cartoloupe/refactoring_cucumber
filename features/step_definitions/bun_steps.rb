When(/^a bun is added$/) do
  add_bun_to @burger
end

Then(/^the burger should have two buns$/) do
  expect(@burger.to_s.count{|item| item == "bun"}).to eq 2
end

