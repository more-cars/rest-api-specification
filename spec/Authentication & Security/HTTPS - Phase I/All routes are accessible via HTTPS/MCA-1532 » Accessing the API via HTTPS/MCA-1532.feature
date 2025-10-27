@REQ_MCA-1525
Feature: HTTPS - Phase I
  As an API user\
  I want to have the option to use an SSL-secured connection\
  So I can be sure that all my requests are going through the actual More Cars servers

  @RULE_MCA-1527
  Rule: All routes are accessible via HTTPS

    @TEST_MCA-1532 @implemented
    Scenario: Accessing the API via HTTPS
      When the user requests a "BRAND" collection via "HTTPS"
      Then the request should be confirmed with status code 200
