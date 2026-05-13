@REQ_MCA-5489
Feature: Update BRAND Node
  As an API contributor
  I want to be able to update a BRAND
  So I can add missing information or fix incorrect data

  @RULE_MCA-5503
  Rule: Read-only properties cannot be overridden by the user when updating a BRAND

    @TEST_MCA-5504 @implemented
    Scenario: Expecting read-only properties to be ignored when updating a BRAND
      Given there exists a "BRAND" "BMW"
      When the user updates the node "BMW" with the following data
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
