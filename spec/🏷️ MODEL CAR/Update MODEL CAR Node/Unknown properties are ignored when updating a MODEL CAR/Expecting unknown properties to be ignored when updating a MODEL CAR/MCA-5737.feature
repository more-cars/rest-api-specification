@REQ_MCA-5724
Feature: Update MODEL CAR Node
  As an API contributor
  I want to be able to update a MODEL CAR
  So I can add missing information or fix incorrect data

  @RULE_MCA-5736
  Rule: Unknown properties are ignored when updating a MODEL CAR

    @TEST_MCA-5737 @implemented
    Scenario: Expecting unknown properties to be ignored when updating a MODEL CAR
      Given there exists a "MODEL CAR" "F40 Matchbox"
      When the user updates the node "F40 Matchbox" with the following data
        | key         | value |
        | thimbleweed | park  |
      Then the response should NOT contain the following keys
        | key         |
        | thimbleweed |
