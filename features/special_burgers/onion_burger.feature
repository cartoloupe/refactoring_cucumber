Feature: A customer orders an onion burger

  Scenario: An onion burger is made
    Given an onion burger is ordered
    When a bun is added
    And some lettuce is added
    And red tomatoes are added
    And 6 onions are added
    And a bun is added
    Then the burger should have two buns
    And the burger should have lettuce in it
    And the burger should have 6 onions in it

