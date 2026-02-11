@REQ_MCA-644
Feature: Basic Auth
  As the service provider\
  I want to have the option to individually restrict access for specific environments\
  So I can access control a testing environment independently from production or demo

  @RULE_MCA-2287
  Rule: API Requests are accepted when valid basic auth credentials are provided

    @TEST_MCA-2288 @implemented
    Scenario: Performing an API request with valid basic auth credentials
      Given basic authentication is activated
      And the user provided valid basic auth credentials
      When the user requests all "BRANDS"
      Then the request should be confirmed with status code 200
