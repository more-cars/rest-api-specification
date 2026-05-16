@REQ_MCA-5706
Feature: Update GAMING PLATFORM Node
  As an API contributor
  I want to be able to update a GAMING PLATFORM
  So I can add missing information or fix incorrect data

  @RULE_MCA-5713
  Rule: Requests to update a GAMING PLATFORM are rejected when the provided data is invalid

    @TEST_MCA-5714 @implemented
    Scenario: Trying to update a GAMING PLATFORM with invalid data types
      Given there exists a "GAMING PLATFORM" "PlayStation 5"
      When the user updates the node "PlayStation 5" with the following data
        | key          | value |
        | name         | 1234  |
        | release_year | TEST  |
        | manufacturer | 1234  |
      Then the request should be rejected with status code 400
