@REQ_MCA-3291
Feature: Create MOTOR SHOW Node
  As an API contributor
  I want to be able to create MOTOR SHOWS
  So I can fill gaps in the database

  @RULE_MCA-3302
  Rule: Read-only properties cannot be overridden by the user when creating a MOTOR SHOW

  @TEST_MCA-3303 @implemented
  Scenario: Expecting read-only properties to be ignored when creating a MOTOR SHOW
    When the user creates a "MOTOR SHOW" "IAA 2017" with the following data
      | key             | value              |
      | name            | 2017 IAA Frankfurt |
      | date_from       | 2017-09-14         |
      | date_until      | 2017-09-24         |
      | location        | Frankfurt          |
      | target_audience | international      |
      | focus           | new_cars           |
      | country_code    | DE                 |
      | id              | 1234               |
      | created_at      | 2025-01-01         |
      | updated_at      | 2025-01-01         |
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
