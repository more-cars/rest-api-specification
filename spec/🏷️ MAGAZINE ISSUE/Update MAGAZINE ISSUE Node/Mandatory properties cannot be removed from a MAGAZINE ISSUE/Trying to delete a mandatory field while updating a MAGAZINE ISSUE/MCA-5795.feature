@REQ_MCA-5778
Feature: Update MAGAZINE ISSUE Node
  As an API contributor
  I want to be able to update a MAGAZINE ISSUE
  So I can add missing information or fix incorrect data

  @RULE_MCA-5794
  Rule: Mandatory properties cannot be removed from a MAGAZINE ISSUE

    @TEST_MCA-5795 @implemented
    Scenario: Trying to delete a mandatory field while updating a MAGAZINE ISSUE.
      Given there exists a "MAGAZINE ISSUE" "sport auto 2_2026"
      When the user updates the node "sport auto 2_2026" with the following data
        | key   | value |
        | title |       |
      Then the request should be rejected with status code 400
