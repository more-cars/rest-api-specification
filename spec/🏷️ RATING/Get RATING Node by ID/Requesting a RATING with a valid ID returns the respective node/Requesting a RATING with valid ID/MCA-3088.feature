@REQ_MCA-3086
Feature: Get RATING Node by ID
  As an API consumer
  I want to be able to request a specific RATING
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-3087
  Rule: Requesting a RATING with a valid ID returns the respective node

    @TEST_MCA-3088 @implemented
    Scenario: Requesting a RATING with valid ID
      Given there exists a "RATING" "93 Percent"
      When the user requests the "RATING" "93 Percent"
      Then the response should return with status code 200
      And the response should return the "RATING" "93 Percent"
