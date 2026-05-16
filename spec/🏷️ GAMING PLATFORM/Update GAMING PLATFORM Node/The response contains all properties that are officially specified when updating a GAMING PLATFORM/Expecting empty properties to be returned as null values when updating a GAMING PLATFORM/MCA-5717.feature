@REQ_MCA-5706
Feature: Update GAMING PLATFORM Node
  As an API contributor
  I want to be able to update a GAMING PLATFORM
  So I can add missing information or fix incorrect data

  @RULE_MCA-5715
  Rule: The response contains all properties that are officially specified when updating a GAMING PLATFORM

    @TEST_MCA-5717 @implemented
    Scenario: Expecting empty properties to be returned as null values when updating a GAMING PLATFORM
      Given there exists a "GAMING PLATFORM" "PlayStation 5"
      When the user updates the node "PlayStation 5" with the following data
        | key          | value           |
        | name         | PlayStation 5_2 |
        | release_year |                 |
        | manufacturer |                 |
      Then the response should contain the following properties
        | key          | value           |
        | name         | PlayStation 5_2 |
        | release_year |                 |
        | manufacturer |                 |
