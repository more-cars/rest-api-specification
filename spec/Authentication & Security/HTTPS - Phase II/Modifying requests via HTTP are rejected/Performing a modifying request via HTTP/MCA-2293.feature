@REQ_MCA-1526
Feature: HTTPS - Phase II
  As an API user\
  I want my communication to ALWAYS be encrypted\
  So I can be sure that the responses really come from More Cars and are not manipulated\
  (Even when I accidentally use HTTP in my requests instead of HTTPS)

  @RULE_MCA-2291
  Rule: Modifying requests via HTTP are rejected

    @TEST_MCA-2293
    Scenario: Performing a modifying request via HTTP
      When the user creates a "BRAND" via "HTTP"
      Then the response should return with status code 426
      And the request should not be redirected to "HTTPS"
