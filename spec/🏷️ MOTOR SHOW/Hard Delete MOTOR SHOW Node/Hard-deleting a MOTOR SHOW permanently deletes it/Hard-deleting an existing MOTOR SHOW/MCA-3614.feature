@REQ_MCA-3612
Feature: Hard Delete MOTOR SHOW Node
  As an API contributor
  I want to be able to delete a MOTOR SHOW
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-3613
  Rule: Hard-deleting a MOTOR SHOW permanently deletes it

    @TEST_MCA-3614 @implemented
    Scenario: Hard-deleting an existing MOTOR SHOW
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      When the user hard-deletes the "MOTOR SHOW" "IAA Frankfurt"
      Then the response should return with status code 204
      And the "MOTOR SHOW" "IAA Frankfurt" should not exist anymore
