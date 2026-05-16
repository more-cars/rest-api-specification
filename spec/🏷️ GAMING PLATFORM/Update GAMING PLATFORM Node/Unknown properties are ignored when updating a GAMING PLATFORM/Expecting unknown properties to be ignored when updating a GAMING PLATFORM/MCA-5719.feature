@REQ_MCA-5706
Feature: Update GAMING PLATFORM Node
  As an API contributor
  I want to be able to update a GAMING PLATFORM
  So I can add missing information or fix incorrect data

  @RULE_MCA-5718
  Rule: Unknown properties are ignored when updating a GAMING PLATFORM

    @TEST_MCA-5719 @implemented
    Scenario: Expecting unknown properties to be ignored when updating a GAMING PLATFORM
      Given there exists a "GAMING PLATFORM" "PlayStation 5"
      When the user updates the node "PlayStation 5" with the following data
        | key         | value |
        | thimbleweed | park  |
      Then the response should NOT contain the following keys
        | key         |
        | thimbleweed |
