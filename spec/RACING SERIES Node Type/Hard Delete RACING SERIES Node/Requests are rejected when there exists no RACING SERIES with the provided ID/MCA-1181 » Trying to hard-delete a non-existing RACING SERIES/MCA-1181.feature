@REQ_MCA-1177
Feature: Hard Delete RACING SERIES Node
  As an API contributor
  I want to be able to delete a RACING SERIES
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-1180
  Rule: Requests are rejected when there exists no RACING SERIES with the provided ID

    @TEST_MCA-1181 @implemented
    Scenario: Trying to hard-delete a non-existing RACING SERIES
      Given "RACING SERIES" "DTM" does NOT exist
      When the user hard-deletes the "RACING SERIES" "DTM"
      Then the request should be rejected with status code 404
