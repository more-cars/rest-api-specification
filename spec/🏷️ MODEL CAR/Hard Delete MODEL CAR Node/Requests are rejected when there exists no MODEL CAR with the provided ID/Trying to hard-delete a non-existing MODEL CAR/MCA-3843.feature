@REQ_MCA-3839
Feature: Hard Delete MODEL CAR Node
  As an API contributor
  I want to be able to delete a MODEL CAR
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-3842
  Rule: Requests are rejected when there exists no MODEL CAR with the provided ID

    @TEST_MCA-3843
    Scenario: Trying to hard-delete a non-existing MODEL CAR
      Given "MODEL CAR" "F40 Matchbox" does NOT exist
      When the user hard-deletes the "MODEL CAR" "F40 Matchbox"
      Then the request should be rejected with status code 404
