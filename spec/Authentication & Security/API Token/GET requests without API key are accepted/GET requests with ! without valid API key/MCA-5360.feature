@REQ_MCA-645
Feature: API Token
  As a webmaster\
  I want to restrict certain API endpoints\
  So not everyone can randomly create or delete data

  @RULE_MCA-5357
  Rule: GET requests without API key are accepted

    @TEST_MCA-5360 @manual_test
    Scenario: GET requests with / without valid API key
      Given the user has an invalid API key
      When the user requests a "BRAND" collection
      Then the request should be accepted with status code "200"
      Given the user has a valid API key
      When the user requests a "BRAND" collection
      Then the request should be accepted with status code "200"
