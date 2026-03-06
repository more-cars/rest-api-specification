@REQ_MCA-3096
Feature: Hard Delete RATING Node
  As an API contributor
  I want to be able to delete a RATING
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-3097
  Rule: Hard-deleting a RATING permanently deletes it

    @TEST_MCA-3098 @implemented
    Scenario: Hard-deleting an existing RATING
      Given there exists a "RATING" "93 Percent"
      When the user hard-deletes the "RATING" "93 Percent"
      Then the response should return with status code 204
      And the "RATING" "93 Percent" should not exist anymore
