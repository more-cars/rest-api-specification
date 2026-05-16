@REQ_MCA-5760
Feature: Update MAGAZINE Node
  As an API contributor
  I want to be able to update a MAGAZINE
  So I can add missing information or fix incorrect data

  @RULE_MCA-5772
  Rule: Unknown properties are ignored when updating a MAGAZINE

    @TEST_MCA-5773 @implemented
    Scenario: Expecting unknown properties to be ignored when updating a MAGAZINE
      Given there exists a "MAGAZINE" "sport auto"
      When the user updates the node "sport auto" with the following data
        | key         | value |
        | thimbleweed | park  |
      Then the response should NOT contain the following keys
        | key         |
        | thimbleweed |
