@REQ_MCA-645
Feature: API Token
  As a webmaster\
  I want to restrict certain API endpoints\
  So not everyone can randomly create or delete data

  @RULE_MCA-5355
  Rule: POST requests without valid API key are rejected

    @TEST_MCA-5358 @manual_test
    Scenario: POST requests with / without valid API key
      Given the user has an invalid API key
      When the user tries to create a "BRAND"
      Then the request should be rejected with status code "401"
      Given the user has a valid API key
      When the user tries to create a "BRAND"
      Then the request should be accepted with status code "201"
