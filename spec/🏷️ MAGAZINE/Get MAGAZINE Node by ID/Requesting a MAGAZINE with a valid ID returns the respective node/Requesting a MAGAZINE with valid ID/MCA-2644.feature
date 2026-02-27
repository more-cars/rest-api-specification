@REQ_MCA-2642
Feature: Get MAGAZINE Node by ID
  As an API consumer
  I want to be able to request a specific MAGAZINE
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-2643
  Rule: Requesting a MAGAZINE with a valid ID returns the respective node

    @TEST_MCA-2644 @implemented
    Scenario: Requesting a MAGAZINE with valid ID
      Given there exists a "MAGAZINE" "Top Gear"
      When the user requests the "MAGAZINE" "Top Gear"
      Then the response should return with status code 200
      And the response should return the "MAGAZINE" "Top Gear"
