@REQ_MCA-2737
Feature: Hard Delete MAGAZINE ISSUE Node
  As an API contributor
  I want to be able to delete a MAGAZINE ISSUE
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-2738
  Rule: Hard-deleting a MAGAZINE ISSUE permanently deletes it

    @TEST_MCA-2739
    Scenario: Hard-deleting an existing MAGAZINE ISSUE
      Given there exists a "MAGAZINE ISSUE" "Sieger-Typen"
      When the user hard-deletes the "MAGAZINE ISSUE" "Sieger-Typen"
      Then the response should return with status code 204
      And the "MAGAZINE ISSUE" "Sieger-Typen" should not exist anymore
