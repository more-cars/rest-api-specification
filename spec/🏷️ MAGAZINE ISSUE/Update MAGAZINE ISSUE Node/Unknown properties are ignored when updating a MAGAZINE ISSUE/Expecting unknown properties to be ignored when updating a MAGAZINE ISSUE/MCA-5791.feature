@REQ_MCA-5778
Feature: Update MAGAZINE ISSUE Node
  As an API contributor
  I want to be able to update a MAGAZINE ISSUE
  So I can add missing information or fix incorrect data

  @RULE_MCA-5790
  Rule: Unknown properties are ignored when updating a MAGAZINE ISSUE

    @TEST_MCA-5791 @implemented
    Scenario: Expecting unknown properties to be ignored when updating a MAGAZINE ISSUE
      Given there exists a "MAGAZINE ISSUE" "sport auto 2_2026"
      When the user updates the node "sport auto 2_2026" with the following data
        | key         | value |
        | thimbleweed | park  |
      Then the response should NOT contain the following keys
        | key         |
        | thimbleweed |
