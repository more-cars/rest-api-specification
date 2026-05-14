@REQ_MCA-5634
Feature: Update RACING SESSION Node
  As an API contributor
  I want to be able to update a RACING SESSION
  So I can add missing information or fix incorrect data

  @RULE_MCA-5646
  Rule: Unknown properties are ignored when updating a RACING SESSION

    @TEST_MCA-5647 @implemented
    Scenario: Expecting unknown properties to be ignored when updating a RACING SESSION
      Given there exists a "RACING SESSION" "Qualifying"
      When the user updates the node "Qualifying" with the following data
        | key         | value |
        | thimbleweed | park  |
      Then the response should NOT contain the following keys
        | key         |
        | thimbleweed |
