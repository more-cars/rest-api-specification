@REQ_MCA-238
Feature: Get NODE by ID
  As an API consumer\
  I want to be able to fetch a specific node for which I only know its ID\
  So I can find out more about it

  @RULE_MCA-2295
  Rule: Requests with invalid ID are rejected

    @TEST_MCA-2297
    Scenario: Requesting a non-existent node
      Given "BRAND" "Bugatti" does NOT exist
      When the user requests the "BRAND" "Bugatti"
      Then the request should be rejected with status code 404
