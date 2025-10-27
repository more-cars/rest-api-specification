@REQ_MCA-1167
Feature: Get RACING SERIES Node by ID
  As an API consumer
  I want to be able to request a specific RACING SERIES
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-1168
  Rule: Requesting a RACING SERIES with a valid ID returns the respective node

    @TEST_MCA-1169 @implemented
    Scenario: Requesting a RACING SERIES with valid ID
      Given there exists a "RACING SERIES" "DTM"
      When the user requests the "RACING SERIES" "DTM"
      Then the response should return with status code 200
      And the response should return the "RACING SERIES" "DTM"
