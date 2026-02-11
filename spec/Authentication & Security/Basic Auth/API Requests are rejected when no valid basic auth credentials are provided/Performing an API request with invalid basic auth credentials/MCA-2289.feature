@REQ_MCA-644
Feature: Basic Auth
  As the service provider\
  I want to have the option to individually restrict access for specific environments\
  So I can access control a testing environment independently from production or demo

  @RULE_MCA-2286
  Rule: API Requests are rejected when no valid basic auth credentials are provided

    @TEST_MCA-2289 @implemented
    Scenario: Performing an API request with invalid basic auth credentials
      Given basic authentication is activated
      And the user did not provide basic auth credentials
      When the user requests all "BRANDS"
      Then the request should be rejected with status code 401
      Given basic authentication is activated
      And the user did not provide valid basic auth credentials
      When the user requests all "BRANDS"
      Then the request should be rejected with status code 401
