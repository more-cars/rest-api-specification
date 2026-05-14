@REQ_MCA-5580
Feature: Update TRACK LAYOUT Node
  As an API contributor
  I want to be able to update a TRACK LAYOUT
  So I can add missing information or fix incorrect data

  @RULE_MCA-5592
  Rule: Unknown properties are ignored when updating a TRACK LAYOUT

    @TEST_MCA-5593 @implemented
    Scenario: Expecting unknown properties to be ignored when updating a TRACK LAYOUT
      Given there exists a "TRACK LAYOUT" "Grand Prix Circuit"
      When the user updates the node "Grand Prix Circuit" with the following data
        | key         | value |
        | thimbleweed | park  |
      Then the response should NOT contain the following keys
        | key         |
        | thimbleweed |
