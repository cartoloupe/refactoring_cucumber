When(/^a (crispy )?bun is added$/) do |crispy|
  if crispy
    add_crispy_bun_to @burger
  else
    add_bun_to @burger
  end
end

Then(/^the burger should have (two buns|only one bun)$/) do |bun_count_phrase|

  bun_count =
    case bun_count_phrase
    when /two/; 2
    when /one/; 1
    end

  expect(@burger.to_s.count{|item| item.include? "bun"}).to eq bun_count
end

Then(/^one of the buns should be crispy$/) do
  expect(@burger.to_s.count{|item| item.include? "crispy"}).to eq 1
end
