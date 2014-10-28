Feature: A customer orders a burger with a crispy bun

  Scenario: A burger is made with a crispy bun
    Given a burger is ordered
    When a bun is added
    And some lettuce is added
    And heirloom tomatoes are sliced and then added
    And some onions are added
    And a crispy bun is added
    Then the burger should have two buns
    And one of the buns should be crispy


