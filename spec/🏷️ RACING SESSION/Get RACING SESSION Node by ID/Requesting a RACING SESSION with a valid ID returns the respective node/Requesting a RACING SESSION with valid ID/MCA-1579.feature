@REQ_MCA-1577
Feature: Get RACING SESSION Node by ID
  As an API consumer
  I want to be able to request a specific RACING SESSION
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-1578
  Rule: Requesting a RACING SESSION with a valid ID returns the respective node

    @TEST_MCA-1579 @implemented
    Scenario: Requesting a RACING SESSION with valid ID
      Given there exists a "RACING SESSION" "Grand Prix"
      When the user requests the "RACING SESSION" "Grand Prix"
      Then the response should return with status code 200
      And the response should return the "RACING SESSION" "Grand Prix"
