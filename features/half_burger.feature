Feature: A customer orders half a burger

  Scenario: A half burger is made
    Given a half burger is ordered
    When a bun is added
    And some lettuce is added
    And onions are added
    Then the burger should have only one bun
    And the burger should have lettuce in it

