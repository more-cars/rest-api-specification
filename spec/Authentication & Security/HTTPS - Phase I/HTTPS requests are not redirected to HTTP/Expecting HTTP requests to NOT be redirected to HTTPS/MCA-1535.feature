@REQ_MCA-1525
Feature: HTTPS - Phase I
  As an API user\
  I want to have the option to use an SSL-secured connection\
  So I can be sure that all my requests are going through the actual More Cars servers

  @RULE_MCA-1530
  Rule: HTTPS requests are not redirected to HTTP

    @TEST_MCA-1535 @implemented
    Scenario: Expecting HTTP requests to NOT be redirected to HTTPS
      When the user requests a "BRAND" collection via "HTTP"
      Then the request should not be redirected
