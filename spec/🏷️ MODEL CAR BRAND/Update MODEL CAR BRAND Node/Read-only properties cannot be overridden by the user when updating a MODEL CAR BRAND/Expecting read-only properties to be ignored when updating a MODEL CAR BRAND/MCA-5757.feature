@REQ_MCA-5742
Feature: Update MODEL CAR BRAND Node
  As an API contributor
  I want to be able to update a MODEL CAR BRAND
  So I can add missing information or fix incorrect data

  @RULE_MCA-5756
  Rule: Read-only properties cannot be overridden by the user when updating a MODEL CAR BRAND

    @TEST_MCA-5757 @implemented
    Scenario: Expecting read-only properties to be ignored when updating a MODEL CAR BRAND
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      When the user updates the node "Hot Wheels" with the following data
        | key        | value      |
        | id         | 1234       |
        | created_at | 2025-01-01 |
        | updated_at | 2025-01-01 |
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
