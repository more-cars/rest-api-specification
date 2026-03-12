@REQ_MCA-3304
Feature: Get PROGRAMME Node by ID
  As an API consumer
  I want to be able to request a specific PROGRAMME
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-3305
  Rule: Requesting a PROGRAMME with a valid ID returns the respective node

    @TEST_MCA-3306 @implemented
    Scenario: Requesting a PROGRAMME with valid ID
      Given there exists a "PROGRAMME" "Top Gear"
      When the user requests the "PROGRAMME" "Top Gear"
      Then the response should return with status code 200
      And the response should return the "PROGRAMME" "Top Gear"
