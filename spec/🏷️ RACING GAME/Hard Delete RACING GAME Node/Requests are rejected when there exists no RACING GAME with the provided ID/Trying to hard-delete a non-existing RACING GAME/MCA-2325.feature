@REQ_MCA-2321
Feature: Hard Delete RACING GAME Node
  As an API contributor
  I want to be able to delete a RACING GAME
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-2324
  Rule: Requests are rejected when there exists no RACING GAME with the provided ID

    @TEST_MCA-2325 @implemented
    Scenario: Trying to hard-delete a non-existing RACING GAME
      Given "RACING GAME" "F1 2025" does NOT exist
      When the user hard-deletes the "RACING GAME" "F1 2025"
      Then the request should be rejected with status code 404
