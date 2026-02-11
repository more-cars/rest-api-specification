@REQ_MCA-1526
Feature: HTTPS - Phase II
  As an API user\
  I want my communication to ALWAYS be encrypted\
  So I can be sure that the responses really come from More Cars and are not manipulated\
  (Even when I accidentally use HTTP in my requests instead of HTTPS)

  @RULE_MCA-1531
  Rule: All public environments have a valid certificate

    @TEST_MCA-1536 @implemented
    Scenario: Expecting the API to use a valid certificate
      When the user requests all "BRAND"s
      Then the response should contain a valid certificate
