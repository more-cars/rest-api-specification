@REQ_MCA-5706
Feature: Update GAMING PLATFORM Node
  As an API contributor
  I want to be able to update a GAMING PLATFORM
  So I can add missing information or fix incorrect data

  @RULE_MCA-5715
  Rule: The response contains all properties that are officially specified when updating a GAMING PLATFORM

    @TEST_MCA-5716 @implemented
    Scenario: Expecting all properties to be returned when updating a GAMING PLATFORM
      Given there exists a "GAMING PLATFORM" "PlayStation 5"
      When the user updates the node "PlayStation 5" with the following data
        | key          | value           |
        | name         | PlayStation 5_2 |
        | release_year | 2022            |
        | manufacturer | Sony_2          |
      Then the request should be confirmed with status code 201
      And the response should contain the following properties
        | key          | value           |
        | name         | PlayStation 5_2 |
        | release_year | 2022            |
        | manufacturer | Sony_2          |
