@REQ_MCA-4231
Feature: Hard Delete VIDEO Node
  As an API contributor
  I want to be able to delete a VIDEO
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-4234
  Rule: Requests are rejected when there exists no VIDEO with the provided ID

    @TEST_MCA-4235
    Scenario: Trying to hard-delete a non-existing VIDEO
      Given "VIDEO" "P1 vs F40" does NOT exist
      When the user hard-deletes the "VIDEO" "P1 vs F40"
      Then the request should be rejected with status code 404
