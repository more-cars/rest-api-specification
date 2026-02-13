@REQ_MCA-2504
Feature: Get GAMING PLATFORM Node by ID
  As an API consumer
  I want to be able to request a specific GAMING PLATFORM
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-2507
  Rule: Requests are rejected when there exists no GAMING PLATFORM with the provided ID

    @TEST_MCA-2508 @implemented
    Scenario: Requesting a GAMING PLATFORM with invalid ID
      When the user requests a non-existing "GAMING PLATFORM"
      Then the request should be rejected with status code 404
