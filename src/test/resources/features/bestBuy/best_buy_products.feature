Feature: Best Buy Products Feature

  Scenario: I get a list of products from Best Buy
    When I get all products from the store

  Scenario Outline: I get a product based on an ID
    When I get a product by id <id>
    Examples:
    |id          |
    |43900       |
    |48530       |
    |127687      |