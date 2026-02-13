@REQ_MCA-2491
Feature: Create GAMING PLATFORM Node
  As an API contributor
  I want to be able to create GAMING PLATFORMS
  So I can fill gaps in the database

  @RULE_MCA-2494
  Rule: Requests to create a GAMING PLATFORM are rejected when the provided data is invalid

    @TEST_MCA-2495 @implemented
    Scenario: Trying to create a GAMING PLATFORM with missing mandatory information
      When the user tries to create a "GAMING PLATFORM" "PlayStation 5" with the following data
        | key | value | datatype |
      Then the request should be rejected with status code 400
