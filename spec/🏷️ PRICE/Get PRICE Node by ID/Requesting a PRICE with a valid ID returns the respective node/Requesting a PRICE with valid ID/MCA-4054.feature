@REQ_MCA-4052
Feature: Get PRICE Node by ID
  As an API consumer
  I want to be able to request a specific PRICE
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-4053
  Rule: Requesting a PRICE with a valid ID returns the respective node

    @TEST_MCA-4054 @implemented
    Scenario: Requesting a PRICE with valid ID
      Given there exists a "PRICE" "Brand New"
      When the user requests the "PRICE" "Brand New"
      Then the response should return with status code 200
      And the response should return the "PRICE" "Brand New"
