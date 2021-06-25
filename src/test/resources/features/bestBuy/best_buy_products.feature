Feature: Best Buy Products Feature

  Scenario: Get a list of Products from Best Buy
    When Get all products from store

  Scenario Outline: Get Products based on ID
    When Get product by id <id>
    Examples:
    |id          |
    |43900       |
    |48530       |
    |127687      |