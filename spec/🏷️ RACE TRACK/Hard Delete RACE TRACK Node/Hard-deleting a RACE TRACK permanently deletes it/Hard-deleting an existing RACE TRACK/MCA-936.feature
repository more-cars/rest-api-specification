@REQ_MCA-934
Feature: Hard Delete RACE TRACK Node
  As an API contributor
  I want to be able to delete a RACE TRACK
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-935
  Rule: Hard-deleting a RACE TRACK permanently deletes it

    @TEST_MCA-936 @implemented
    Scenario: Hard-deleting an existing RACE TRACK
      Given there exists a "RACE TRACK" "AVUS"
      When the user hard-deletes the "RACE TRACK" "AVUS"
      Then the response should return with status code 204
      And the "RACE TRACK" "AVUS" should not exist anymore
