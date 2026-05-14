@REQ_MCA-5562
Feature: Update RACE TRACK Node
  As an API contributor
  I want to be able to update a RACE TRACK
  So I can add missing information or fix incorrect data

  @RULE_MCA-5574
  Rule: Unknown properties are ignored when updating a RACE TRACK

    @TEST_MCA-5575 @implemented
    Scenario: Expecting unknown properties to be ignored when updating a RACE TRACK
      Given there exists a "RACE TRACK" "Norisring"
      When the user updates the node "Norisring" with the following data
        | key         | value |
        | thimbleweed | park  |
      Then the response should NOT contain the following keys
        | key         |
        | thimbleweed |
