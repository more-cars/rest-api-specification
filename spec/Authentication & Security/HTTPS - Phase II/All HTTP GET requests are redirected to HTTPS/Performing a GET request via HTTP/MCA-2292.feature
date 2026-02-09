@REQ_MCA-1526
Feature: HTTPS - Phase II
  As an API user\
  I want my communication to ALWAYS be encrypted\
  So I can be sure that the responses really come from More Cars and are not manipulated\
  (Even when I accidentally use HTTP in my requests instead of HTTPS)

  @RULE_MCA-2290
  Rule: All HTTP GET requests are redirected to HTTPS

    @TEST_MCA-2292
    Scenario: Performing a GET request via HTTP
      When the user requests a "BRAND" collection via "HTTP"
      Then the response should return with status code 301
      And the request should be redirected to "HTTPS"
