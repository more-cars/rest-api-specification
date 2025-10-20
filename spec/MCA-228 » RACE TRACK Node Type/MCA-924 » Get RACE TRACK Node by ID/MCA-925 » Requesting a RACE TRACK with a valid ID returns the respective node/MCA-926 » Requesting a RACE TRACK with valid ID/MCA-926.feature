@REQ_MCA-924
Feature: Get RACE TRACK Node by ID
  As an API consumer
  I want to be able to request a specific RACE TRACK
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-925
  Rule: Requesting a RACE TRACK with a valid ID returns the respective node

    @TEST_MCA-926 @implemented
    Scenario: Requesting a RACE TRACK with valid ID
      Given there exists a "RACE TRACK" "Lausitzring"
      When the user requests the "RACE TRACK" "Lausitzring"
      Then the response should return with status code 200
      And the response should return the "RACE TRACK" "Lausitzring"
