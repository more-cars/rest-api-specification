@REQ_MCA-2504
Feature: Get GAMING PLATFORM Node by ID
  As an API consumer
  I want to be able to request a specific GAMING PLATFORM
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-2505
  Rule: Requesting a GAMING PLATFORM with a valid ID returns the respective node

    @TEST_MCA-2506 @implemented
    Scenario: Requesting a GAMING PLATFORM with valid ID
      Given there exists a "GAMING PLATFORM" "PlayStation 5"
      When the user requests the "GAMING PLATFORM" "PlayStation 5"
      Then the response should return with status code 200
      And the response should return the "GAMING PLATFORM" "PlayStation 5"
