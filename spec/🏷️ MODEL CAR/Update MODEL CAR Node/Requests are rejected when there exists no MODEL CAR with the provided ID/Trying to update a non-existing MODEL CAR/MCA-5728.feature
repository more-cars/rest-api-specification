@REQ_MCA-5724
Feature: Update MODEL CAR Node
  As an API contributor
  I want to be able to update a MODEL CAR
  So I can add missing information or fix incorrect data

  @RULE_MCA-5727
  Rule: Requests are rejected when there exists no MODEL CAR with the provided ID

    @TEST_MCA-5728 @implemented
    Scenario: Trying to update a non-existing MODEL CAR
      Given "MODEL CAR" "F40 Matchbox" does NOT exist
      When the user updates the node "F40 Matchbox"
      Then the request should be rejected with status code 404
