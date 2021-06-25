Feature: Best Buy Products Feature

  Scenario: I get a list of products from Best Buy
    When I get all products from the store
    Then the response code should be 200
    And the response body field 'total' is not empty

  Scenario Outline: I get a product based on an ID
    When I get a product by id <id>
    Then the response code should be <response_code>
    And the response body field <field> is not empty

    Examples:
    |id          |response_code |field |
    |43900       |200           |id    |
    |48530       |200           |id    |
    |127687      |200           |id    |

  Scenario Outline: I get a product based on an invalid ID
    When I get a product by id <id>
    Then the response code should be <response_code>

    Examples:
      |id          |response_code |
      |122345      |404           |
      |x           |404           |
      |0           |404           |