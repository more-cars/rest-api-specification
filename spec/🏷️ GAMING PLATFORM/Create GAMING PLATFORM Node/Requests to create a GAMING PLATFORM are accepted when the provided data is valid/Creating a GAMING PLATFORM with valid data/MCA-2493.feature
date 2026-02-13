@REQ_MCA-2491
Feature: Create GAMING PLATFORM Node
  As an API contributor
  I want to be able to create GAMING PLATFORMS
  So I can fill gaps in the database

  @RULE_MCA-2492
  Rule: Requests to create a GAMING PLATFORM are accepted when the provided data is valid

    @TEST_MCA-2493 @implemented
    Scenario: Creating a GAMING PLATFORM with valid data
      When the user creates a "GAMING PLATFORM" "PlayStation 5" with the following data
        | key          | value         | datatype |
        | name         | PlayStation 5 | string   |
        | release_year | 2020          | number   |
        | manufacturer | Sony          | string   |
      Then the request should be confirmed with status code 201
      And the response should return the "GAMING PLATFORM" "PlayStation 5"
