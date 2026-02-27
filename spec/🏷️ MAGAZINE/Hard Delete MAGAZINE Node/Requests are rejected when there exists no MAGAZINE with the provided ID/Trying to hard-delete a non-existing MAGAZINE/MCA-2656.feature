@REQ_MCA-2652
Feature: Hard Delete MAGAZINE Node
  As an API contributor
  I want to be able to delete a MAGAZINE
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-2655
  Rule: Requests are rejected when there exists no MAGAZINE with the provided ID

    @TEST_MCA-2656
    Scenario: Trying to hard-delete a non-existing MAGAZINE
      Given "MAGAZINE" "ComputerBild" does NOT exist
      When the user hard-deletes the "MAGAZINE" "ComputerBild"
      Then the request should be rejected with status code 404
