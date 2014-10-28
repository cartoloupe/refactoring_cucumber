Feature: A customer orders a burger

  Scenario: A full burger is made
    Given a burger is ordered
    When a bun is added
    And some lettuce is added
    And red tomatoes are sliced and then added
    And 3 onions are added
    And a bun is added
    Then the burger should have two buns
    And the burger should have lettuce in it

