@REQ_MCA-5832
Feature: Update PROGRAMME EPISODE Node
  As an API contributor
  I want to be able to update a PROGRAMME EPISODE
  So I can add missing information or fix incorrect data

  @RULE_MCA-5844
  Rule: Unknown properties are ignored when updating a PROGRAMME EPISODE

    @TEST_MCA-5845 @implemented
    Scenario: Expecting unknown properties to be ignored when updating a PROGRAMME EPISODE
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      When the user updates the node "The Holy Trinity" with the following data
        | key         | value |
        | thimbleweed | park  |
      Then the response should NOT contain the following keys
        | key         |
        | thimbleweed |
