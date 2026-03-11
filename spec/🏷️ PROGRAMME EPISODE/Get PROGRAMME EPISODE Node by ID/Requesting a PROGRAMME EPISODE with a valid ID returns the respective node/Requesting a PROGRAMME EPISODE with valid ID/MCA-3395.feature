@REQ_MCA-3393
Feature: Get PROGRAMME EPISODE Node by ID
  As an API consumer
  I want to be able to request a specific PROGRAMME EPISODE
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-3394
  Rule: Requesting a PROGRAMME EPISODE with a valid ID returns the respective node

    @TEST_MCA-3395
    Scenario: Requesting a PROGRAMME EPISODE with valid ID
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      When the user requests the "PROGRAMME EPISODE" "The Holy Trinity"
      Then the response should return with status code 200
      And the response should return the "PROGRAMME EPISODE" "The Holy Trinity"
