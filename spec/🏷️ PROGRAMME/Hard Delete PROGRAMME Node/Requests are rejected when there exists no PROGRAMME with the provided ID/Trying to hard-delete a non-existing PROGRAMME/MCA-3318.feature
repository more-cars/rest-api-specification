@REQ_MCA-3314
Feature: Hard Delete PROGRAMME Node
  As an API contributor
  I want to be able to delete a PROGRAMME
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-3317
  Rule: Requests are rejected when there exists no PROGRAMME with the provided ID

    @TEST_MCA-3318
    Scenario: Trying to hard-delete a non-existing PROGRAMME
      Given "PROGRAMME" "Top Gear" does NOT exist
      When the user hard-deletes the "PROGRAMME" "Top Gear"
      Then the request should be rejected with status code 404
