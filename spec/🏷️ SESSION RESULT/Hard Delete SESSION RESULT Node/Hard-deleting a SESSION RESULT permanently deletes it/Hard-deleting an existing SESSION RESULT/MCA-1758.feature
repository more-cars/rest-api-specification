@REQ_MCA-1756
Feature: Hard Delete SESSION RESULT Node
  As an API contributor
  I want to be able to delete a SESSION RESULT
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-1757
  Rule: Hard-deleting a SESSION RESULT permanently deletes it

    @TEST_MCA-1758 @implemented
    Scenario: Hard-deleting an existing SESSION RESULT
      Given there exists a "SESSION RESULT" "999th place"
      When the user hard-deletes the "SESSION RESULT" "999th place"
      Then the response should return with status code 204
      And the "SESSION RESULT" "999th place" should not exist anymore
