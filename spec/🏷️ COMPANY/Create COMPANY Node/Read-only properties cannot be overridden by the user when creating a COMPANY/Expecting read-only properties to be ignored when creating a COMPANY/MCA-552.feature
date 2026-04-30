@REQ_MCA-539
Feature: Create COMPANY Node
  As an API contributor
  I want to be able to create COMPANY nodes
  So I can fill gaps in the database

  @RULE_MCA-551
  Rule: Read-only properties cannot be overridden by the user when creating a COMPANY

    @TEST_MCA-552 @implemented
    Scenario: Expecting read-only properties to be ignored when creating a COMPANY
      When the user creates a "COMPANY" "BMW AG" with the following data
        | key                         | value      |
        | name                        | BMW AG     |
        | founded                     | 1916       |
        | defunct                     |            |
        | headquarters_location       | Munich     |
        | hq_country_code             | DE         |
        | legal_headquarters_location | Munich     |
        | legal_hq_country_code       | DE         |
        | id                          | 1234       |
        | created_at                  | 2025-01-01 |
        | updated_at                  | 2025-01-01 |
      Then the response should contain an ID
      And the response should contain the following keys
        | key        |
        | created_at |
        | updated_at |
      But the response should NOT contain the ID 1234
      And the response should NOT contain the following properties
        | key        | value      | datatype |
        | created_at | 2025-01-01 | string   |
        | updated_at | 2025-01-01 | string   |
