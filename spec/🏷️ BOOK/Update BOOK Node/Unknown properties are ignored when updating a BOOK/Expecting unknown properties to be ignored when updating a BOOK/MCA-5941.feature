@REQ_MCA-5928
Feature: Update BOOK Node
  As an API contributor
  I want to be able to update a BOOK
  So I can add missing information or fix incorrect data

  @RULE_MCA-5940
  Rule: Unknown properties are ignored when updating a BOOK

    @TEST_MCA-5941 @implemented
    Scenario: Expecting unknown properties to be ignored when updating a BOOK
      Given there exists a "BOOK" "F1 in Numbers"
      When the user updates the node "F1 in Numbers" with the following data
        | key         | value |
        | thimbleweed | park  |
      Then the response should NOT contain the following keys
        | key         |
        | thimbleweed |
