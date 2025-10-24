@REQ_MCA-1525
Feature: HTTPS - Phase I
  As an API user\
  I want to have the option to use an SSL-secured connection\
  So I can be sure that all my requests are going through the actual More Cars servers

  @RULE_MCA-1529
  Rule: HTTP requests are not redirected to HTTPS

    @TEST_MCA-1534 @implemented
    Scenario: Expecting HTTPS requests to NOT be redirected to HTTP
      When the user requests a "BRAND" collection via "HTTPS"
      Then the request should not be redirected
