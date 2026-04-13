@REQ_MCA-645
Feature: API Token
  As a webmaster\
  I want to restrict certain API endpoints\
  So not everyone can randomly create or delete data

  @RULE_MCA-5356
  Rule: DELETE requests without valid API key are rejected

    @TEST_MCA-5359 @manual_test
    Scenario: DELETE requests with / without valid API key
      Given the user has an invalid API key
      And there exists a "BRAND" "BMW"
      When the user tries to delete "BRAND" "BMW"
      Then the request should be rejected with status code "401"
      Given the user has a valid API key
      And there exists a "BRAND" "Audi"
      When the user tries to delete "BRAND" "Audi"
      Then the request should be accepted with status code "204"
