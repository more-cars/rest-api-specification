@REQ_MCA-4208
Feature: Create VIDEO Node
  As an API contributor\
  I want to be able to create VIDEO nodes\
  So I can later use them to illustrate other nodes

  @RULE_MCA-4219
  Rule: Read-only properties cannot be overridden by the user when creating a VIDEO

  @TEST_MCA-4220 @implemented
  Scenario: Expecting read-only properties to be ignored when creating a VIDEO
    When the user creates a "VIDEO" "P1 vs F40" with the following data
      | key            | value       |
      | video_provider | youtube     |
      | external_id    | NqsBncRslsg |
      | id             | 1234        |
      | created_at     | 2025-01-01  |
      | updated_at     | 2025-01-01  |
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
