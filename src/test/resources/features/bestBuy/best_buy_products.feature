Feature: Best Buy Products Feature

  Scenario: I get a list of products from Best Buy
    When I get all products from the store
    Then the response code should be 200

  Scenario Outline: I get a product based on an ID
    When I get a product by id <id>
    Then the response code should be <response_code>
    Examples:
    |id          |response_code |
    |43900       |200           |
    |48530       |200           |
    |127687      |200           |