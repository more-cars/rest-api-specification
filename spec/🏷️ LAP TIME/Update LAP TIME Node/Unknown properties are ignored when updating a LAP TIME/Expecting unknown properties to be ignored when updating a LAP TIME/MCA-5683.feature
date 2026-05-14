@REQ_MCA-5670
Feature: Update LAP TIME Node
  As an API contributor
  I want to be able to update a LAP TIME
  So I can add missing information or fix incorrect data

  @RULE_MCA-5682
  Rule: Unknown properties are ignored when updating a LAP TIME

    @TEST_MCA-5683 @implemented
    Scenario: Expecting unknown properties to be ignored when updating a LAP TIME
      Given there exists a "LAP TIME" "Fastest lap"
      When the user updates the node "Fastest lap" with the following data
        | key         | value |
        | thimbleweed | park  |
      Then the response should NOT contain the following keys
        | key         |
        | thimbleweed |
