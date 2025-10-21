@REQ_MCA-964
Feature: Hard Delete TRACK LAYOUT Node
  As an API contributor
  I want to be able to delete a TRACK LAYOUT
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-967
  Rule: Requests are rejected when there exists no TRACK LAYOUT with the provided ID

    @TEST_MCA-968 @implemented
    Scenario: Trying to hard-delete a non-existing TRACK LAYOUT
      Given "TRACK LAYOUT" "GP Circuit" does NOT exist
      When the user hard-deletes the "TRACK LAYOUT" "GP Circuit"
      Then the request should be rejected with status code 404
