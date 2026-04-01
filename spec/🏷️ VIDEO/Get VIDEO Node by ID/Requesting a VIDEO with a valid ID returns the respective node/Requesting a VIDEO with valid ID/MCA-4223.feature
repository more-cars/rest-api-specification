@REQ_MCA-4221
Feature: Get VIDEO Node by ID
  As an API consumer
  I want to be able to request a specific VIDEO
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-4222
  Rule: Requesting a VIDEO with a valid ID returns the respective node

    @TEST_MCA-4223 @implemented
    Scenario: Requesting a VIDEO with valid ID
      Given there exists a "VIDEO" "P1 vs F40"
      When the user requests the "VIDEO" "P1 vs F40"
      Then the response should return with status code 200
      And the response should return the "VIDEO" "P1 vs F40"
