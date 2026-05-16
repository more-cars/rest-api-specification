@REQ_MCA-5778
Feature: Update MAGAZINE ISSUE Node
  As an API contributor
  I want to be able to update a MAGAZINE ISSUE
  So I can add missing information or fix incorrect data

  @RULE_MCA-5781
  Rule: Requests are rejected when there exists no MAGAZINE ISSUE with the provided ID

    @TEST_MCA-5782 @implemented
    Scenario: Trying to update a non-existing MAGAZINE ISSUE
      Given "MAGAZINE ISSUE" "sport auto 2_2026" does NOT exist
      When the user updates the node "sport auto 2_2026"
      Then the request should be rejected with status code 404
