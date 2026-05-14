@REQ_MCA-5598
Feature: Update RACING SERIES Node
  As an API contributor
  I want to be able to update a RACING SERIES
  So I can add missing information or fix incorrect data

  @RULE_MCA-5610
  Rule: Unknown properties are ignored when updating a RACING SERIES

    @TEST_MCA-5611 @implemented
    Scenario: Expecting unknown properties to be ignored when updating a RACING SERIES
      Given there exists a "RACING SERIES" "Formula 1"
      When the user updates the node "Formula 1" with the following data
        | key         | value |
        | thimbleweed | park  |
      Then the response should NOT contain the following keys
        | key         |
        | thimbleweed |
