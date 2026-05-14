@REQ_MCA-5616
Feature: Update RACING EVENT Node
  As an API contributor
  I want to be able to update a RACING EVENT
  So I can add missing information or fix incorrect data

  @RULE_MCA-5628
  Rule: Unknown properties are ignored when updating a RACING EVENT

    @TEST_MCA-5629 @implemented
    Scenario: Expecting unknown properties to be ignored when updating a RACING EVENT
      Given there exists a "RACING EVENT" "GP Monaco"
      When the user updates the node "GP Monaco" with the following data
        | key         | value |
        | thimbleweed | park  |
      Then the response should NOT contain the following keys
        | key         |
        | thimbleweed |
