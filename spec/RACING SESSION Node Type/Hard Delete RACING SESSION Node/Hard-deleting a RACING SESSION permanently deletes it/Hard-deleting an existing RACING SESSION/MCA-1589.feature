@REQ_MCA-1587
Feature: Hard Delete RACING SESSION Node
  As an API contributor
  I want to be able to delete a RACING SESSION
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-1588
  Rule: Hard-deleting a RACING SESSION permanently deletes it

    @TEST_MCA-1589
    Scenario: Hard-deleting an existing RACING SESSION
      Given there exists a "RACING SESSION" "Free Practice 4"
      When the user hard-deletes the "RACING SESSION" "Free Practice 4"
      Then the response should return with status code 204
      And the "RACING SESSION" "Free Practice 4" should not exist anymore
