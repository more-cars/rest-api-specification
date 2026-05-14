@REQ_MCA-5652
Feature: Update SESSION RESULT Node
  As an API contributor
  I want to be able to update a SESSION RESULT
  So I can add missing information or fix incorrect data

  @RULE_MCA-5664
  Rule: Unknown properties are ignored when updating a SESSION RESULT

    @TEST_MCA-5665 @implemented
    Scenario: Expecting unknown properties to be ignored when updating a SESSION RESULT
      Given there exists a "SESSION RESULT" "1st place"
      When the user updates the node "1st place" with the following data
        | key         | value |
        | thimbleweed | park  |
      Then the response should NOT contain the following keys
        | key         |
        | thimbleweed |
