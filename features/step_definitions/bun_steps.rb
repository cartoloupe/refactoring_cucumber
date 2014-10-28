When(/^a bun is added$/) do
  add_bun_to @burger
end

Then(/^the burger should have (two buns|only one bun)$/) do |bun_count_phrase|

  bun_count =
    case bun_count_phrase
    when /two/; 2
    when /one/; 1
    end

  expect(@burger.to_s.count{|item| item == "bun"}).to eq bun_count
end

