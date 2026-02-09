@REQ_MCA-1746
Feature: Get SESSION RESULT Node by ID
  As an API consumer
  I want to be able to request a specific SESSION RESULT
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-1747
  Rule: Requesting a SESSION RESULT with a valid ID returns the respective node

    @TEST_MCA-1748 @implemented
    Scenario: Requesting a SESSION RESULT with valid ID
      Given there exists a "SESSION RESULT" "1st place"
      When the user requests the "SESSION RESULT" "1st place"
      Then the response should return with status code 200
      And the response should return the "SESSION RESULT" "1st place"
