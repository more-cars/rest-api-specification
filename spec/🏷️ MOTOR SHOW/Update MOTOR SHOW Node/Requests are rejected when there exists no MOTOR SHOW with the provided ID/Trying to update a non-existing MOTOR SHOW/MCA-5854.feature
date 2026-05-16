@REQ_MCA-5850
Feature: Update MOTOR SHOW Node
  As an API contributor
  I want to be able to update a MOTOR SHOW
  So I can add missing information or fix incorrect data

  @RULE_MCA-5853
  Rule: Requests are rejected when there exists no MOTOR SHOW with the provided ID

    @TEST_MCA-5854 @implemented
    Scenario: Trying to update a non-existing MOTOR SHOW
      Given "MOTOR SHOW" "IAA Frankfurt" does NOT exist
      When the user updates the node "IAA Frankfurt"
      Then the request should be rejected with status code 404
