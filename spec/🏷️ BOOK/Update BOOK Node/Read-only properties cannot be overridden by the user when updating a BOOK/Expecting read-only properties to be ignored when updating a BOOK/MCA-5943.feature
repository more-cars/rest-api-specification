@REQ_MCA-5928
Feature: Update BOOK Node
  As an API contributor
  I want to be able to update a BOOK
  So I can add missing information or fix incorrect data

  @RULE_MCA-5942
  Rule: Read-only properties cannot be overridden by the user when updating a BOOK

    @TEST_MCA-5943 @implemented
    Scenario: Expecting read-only properties to be ignored when updating a BOOK
      Given there exists a "BOOK" "F1 in Numbers"
      When the user updates the node "F1 in Numbers" with the following data
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
