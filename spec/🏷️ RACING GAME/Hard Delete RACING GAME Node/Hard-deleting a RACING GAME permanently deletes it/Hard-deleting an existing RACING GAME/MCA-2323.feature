@REQ_MCA-2321
Feature: Hard Delete RACING GAME Node
  As an API contributor
  I want to be able to delete a RACING GAME
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-2322
  Rule: Hard-deleting a RACING GAME permanently deletes it

    @TEST_MCA-2323 @implemented
    Scenario: Hard-deleting an existing RACING GAME
      Given there exists a "RACING GAME" "F1 2025"
      When the user hard-deletes the "RACING GAME" "F1 2025"
      Then the response should return with status code 204
      And the "RACING GAME" "F1 2025" should not exist anymore
