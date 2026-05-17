@REQ_MCA-5706
Feature: Update GAMING PLATFORM Node
  As an API contributor
  I want to be able to update a GAMING PLATFORM
  So I can add missing information or fix incorrect data

  @RULE_MCA-5707
  Rule: Requests to update a GAMING PLATFORM are accepted when the provided data is valid

    @TEST_MCA-5708 @implemented
    Scenario: Updating a GAMING PLATFORM with valid data
      Given there exists a "GAMING PLATFORM" "PlayStation 5"
      When the user updates the node "PlayStation 5" with the following data
        | key          | value           |
        | name         | PlayStation 5_2 |
        | release_year | 2022            |
        | manufacturer | Sony_2          |
      Then the request should be confirmed with status code 200
