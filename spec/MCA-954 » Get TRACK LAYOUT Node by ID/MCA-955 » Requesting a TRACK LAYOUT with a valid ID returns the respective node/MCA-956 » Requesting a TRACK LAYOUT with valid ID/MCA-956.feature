@REQ_MCA-954
Feature: Get TRACK LAYOUT Node by ID
  As an API consumer
  I want to be able to request a specific TRACK LAYOUT
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-955
  Rule: Requesting a TRACK LAYOUT with a valid ID returns the respective node

    @TEST_MCA-956 @implemented
    Scenario: Requesting a TRACK LAYOUT with valid ID
      Given there exists a "TRACK LAYOUT" "GP Circuit"
      When the user requests the "TRACK LAYOUT" "GP Circuit"
      Then the response should return with status code 200
      And the response should return the "TRACK LAYOUT" "GP Circuit"
