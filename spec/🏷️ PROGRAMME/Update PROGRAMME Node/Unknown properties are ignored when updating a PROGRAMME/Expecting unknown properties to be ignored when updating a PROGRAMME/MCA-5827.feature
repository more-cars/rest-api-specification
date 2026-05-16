@REQ_MCA-5814
Feature: Update PROGRAMME Node
  As an API contributor
  I want to be able to update a PROGRAMME
  So I can add missing information or fix incorrect data

  @RULE_MCA-5826
  Rule: Unknown properties are ignored when updating a PROGRAMME

    @TEST_MCA-5827 @implemented
    Scenario: Expecting unknown properties to be ignored when updating a PROGRAMME
      Given there exists a "PROGRAMME" "The Grand Tour"
      When the user updates the node "The Grand Tour" with the following data
        | key         | value |
        | thimbleweed | park  |
      Then the response should NOT contain the following keys
        | key         |
        | thimbleweed |
