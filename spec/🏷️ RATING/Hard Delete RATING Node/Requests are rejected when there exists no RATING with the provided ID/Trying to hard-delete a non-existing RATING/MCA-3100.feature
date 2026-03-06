@REQ_MCA-3096
Feature: Hard Delete RATING Node
  As an API contributor
  I want to be able to delete a RATING
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-3099
  Rule: Requests are rejected when there exists no RATING with the provided ID

    @TEST_MCA-3100 @implemented
    Scenario: Trying to hard-delete a non-existing RATING
      Given "RATING" "93 Percent" does NOT exist
      When the user hard-deletes the "RATING" "93 Percent"
      Then the request should be rejected with status code 404
