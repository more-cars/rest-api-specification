@REQ_MCA-1275
Feature: Hard Delete RACING EVENT Node
  As an API contributor
  I want to be able to delete a RACING EVENT
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-1278
  Rule: Requests are rejected when there exists no RACING EVENT with the provided ID

    @TEST_MCA-1279 @implemented
    Scenario: Trying to hard-delete a non-existing RACING EVENT
      Given "RACING EVENT" "DTM" does NOT exist
      When the user hard-deletes the "RACING EVENT" "DTM"
      Then the request should be rejected with status code 404
