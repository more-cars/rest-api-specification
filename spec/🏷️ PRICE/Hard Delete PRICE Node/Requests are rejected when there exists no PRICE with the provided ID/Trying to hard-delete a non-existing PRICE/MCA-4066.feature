@REQ_MCA-4062
Feature: Hard Delete PRICE Node
  As an API contributor
  I want to be able to delete a PRICE
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-4065
  Rule: Requests are rejected when there exists no PRICE with the provided ID

    @TEST_MCA-4066 @implemented
    Scenario: Trying to hard-delete a non-existing PRICE
      Given "PRICE" "Test Price" does NOT exist
      When the user hard-deletes the "PRICE" "Test Price"
      Then the request should be rejected with status code 404
