@REQ_MCA-1265
Feature: Get RACING EVENT Node by ID
  As an API consumer
  I want to be able to request a specific RACING EVENT
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-1266
  Rule: Requesting a RACING EVENT with a valid ID returns the respective node

    @TEST_MCA-1267 @implemented
    Scenario: Requesting a RACING EVENT with valid ID
      Given there exists a "RACING EVENT" "GP Monaco"
      When the user requests the "RACING EVENT" "GP Monaco"
      Then the response should return with status code 200
      And the response should return the "RACING EVENT" "GP Monaco"
