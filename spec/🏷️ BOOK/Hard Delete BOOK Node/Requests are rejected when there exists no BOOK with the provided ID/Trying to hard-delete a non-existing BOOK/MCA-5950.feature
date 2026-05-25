@REQ_MCA-5946
Feature: Hard Delete BOOK Node
  As an API contributor
  I want to be able to delete a BOOK
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-5949
  Rule: Requests are rejected when there exists no BOOK with the provided ID

    @TEST_MCA-5950 @implemented
    Scenario: Trying to hard-delete a non-existing BOOK
      Given "BOOK" "F1 in Numbers" does NOT exist
      When the user hard-deletes the "BOOK" "F1 in Numbers"
      Then the request should be rejected with status code 404
