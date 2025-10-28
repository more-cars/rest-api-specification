@REQ_MCA-1867
Feature: Hard Delete LAP TIME Node
  As an API contributor
  I want to be able to delete a LAP TIME
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-1870
  Rule: Requests are rejected when there exists no LAP TIME with the provided ID

    @TEST_MCA-1871 @implemented
    Scenario: Trying to hard-delete a non-existing LAP TIME
      Given "LAP TIME" "test lap" does NOT exist
      When the user hard-deletes the "LAP TIME" "test lap"
      Then the request should be rejected with status code 404
