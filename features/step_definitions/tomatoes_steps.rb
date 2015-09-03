When(/^(?:red|green|heirloom) tomatoes (?:are sliced and then added|are added)$/) do
  @tomatoes = :yes
  @burger.add "tomatoes"
  @burger.add "tomatoes"
end
