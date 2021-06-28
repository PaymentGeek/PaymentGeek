Feature: Best Buy Products Feature

  Scenario: XRAY-0001 I get a list of products from Best Buy
    When I get all products from the store
    Then the response code should be 200
    And the response body field 'total' is not empty

  Scenario Outline: XRAY-0002 I get a product based on an ID
    When I get a product by id <id>
    Then the response code should be <response_code>
    And the response body field <field> is not empty

    Examples:
    |id          |response_code |field |
    |43900       |200           |id    |
    |48530       |200           |id    |
    |127687      |200           |id    |

  Scenario Outline: XRAY-0003 I get a product based on an invalid ID
    When I get a product by id <id>
    Then the response code should be <response_code>

    Examples:
      |id          |response_code |
      |122345      |404           |
      |x           |404           |
      |0           |404           |

  Scenario Outline: XRAY-0004 POST a new product
    # please pass the XRAY ID of the test case as a parameter
    When I POST a new product for id <xray_id>
    Then the response code should be 201
    Examples:
      |xray_id        |
      |XRAY-0004_1    |
      |XRAY-0004_2    |
      |XRAY-0004_3    |

  Scenario Outline: XRAY-0005 POST an invalid product
    # please pass the XRAY ID of the test case as a parameter
    When I POST a new product for id <xray_id>
    Then the response code should be 400
    And the value in field errors equals <error_code>

    Examples:
      |xray_id        |error_code                                              |
      # Invalid Price
      |XRAY-0005_1    |['price' should be multiple of 0.01]                    |
      # Invalid description
      |XRAY-0005_2    |['description' should NOT be longer than 100 characters]|