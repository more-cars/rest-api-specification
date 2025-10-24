@REQ_MCA-1525
Feature: HTTPS - Phase I
  As an API user\
  I want to have the option to use an SSL-secured connection\
  So I can be sure that all my requests are going through the actual More Cars servers

  @RULE_MCA-1528
  Rule: All routes are accessible via HTTP

    @TEST_MCA-1533 @implemented
    Scenario: Accessing the API via HTTP
      When the user requests a "BRAND" collection via "HTTP"
      Then the request should be confirmed with status code 200
