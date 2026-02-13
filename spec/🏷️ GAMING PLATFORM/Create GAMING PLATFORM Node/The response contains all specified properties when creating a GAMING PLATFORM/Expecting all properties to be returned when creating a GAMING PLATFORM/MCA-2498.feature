@REQ_MCA-2491
Feature: Create GAMING PLATFORM Node
  As an API contributor
  I want to be able to create GAMING PLATFORMS
  So I can fill gaps in the database

  @RULE_MCA-2497
  Rule: The response contains all specified properties when creating a GAMING PLATFORM

    @TEST_MCA-2498 @implemented
    Scenario: Expecting all properties to be returned when creating a GAMING PLATFORM
      When the user creates a "GAMING PLATFORM" "PlayStation 5" with the following data
        | key          | value         | datatype |
        | name         | PlayStation 5 | string   |
        | release_year | 2020          | number   |
        | manufacturer | Sony          | string   |
      Then the response should contain the following properties
        | key          | value         | datatype |
        | name         | PlayStation 5 | string   |
        | release_year | 2020          | number   |
        | manufacturer | Sony          | string   |
