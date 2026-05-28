@REQ_MCA-3803
Feature: Create MODEL CAR BRAND Node
  As an API contributor\
  I want to be able to create MODEL CAR BRANDS\
  So I can fill gaps in the database

  @RULE_MCA-3814
  Rule: Read-only properties cannot be overridden by the user when creating a MODEL CAR BRAND

  @TEST_MCA-3815 @implemented
  Scenario: Expecting read-only properties to be ignored when creating a MODEL CAR BRAND
    When the user creates a "MODEL CAR BRAND" "Hot Wheels" with the following data
      | key          | value      |
      | name         | Hot Wheels |
      | founded      | 1968       |
      | defunct      |            |
      | country_code | US         |
      | id           | 1234       |
      | created_at   | 2025-01-01 |
      | updated_at   | 2025-01-01 |
    Then the response should contain an ID
    And the response should contain the following keys
      | key        |
      | created_at |
      | updated_at |
    But the response should NOT contain the ID 1234
    And the response should NOT contain the following properties
      | key        | value      |
      | created_at | 2025-01-01 |
      | updated_at | 2025-01-01 |
