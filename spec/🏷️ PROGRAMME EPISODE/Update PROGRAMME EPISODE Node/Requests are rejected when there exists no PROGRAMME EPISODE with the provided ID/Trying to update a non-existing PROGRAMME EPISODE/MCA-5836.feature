@REQ_MCA-5832
Feature: Update PROGRAMME EPISODE Node
  As an API contributor
  I want to be able to update a PROGRAMME EPISODE
  So I can add missing information or fix incorrect data

  @RULE_MCA-5835
  Rule: Requests are rejected when there exists no PROGRAMME EPISODE with the provided ID

    @TEST_MCA-5836 @implemented
    Scenario: Trying to update a non-existing PROGRAMME EPISODE
      Given "PROGRAMME EPISODE" "The Holy Trinity" does NOT exist
      When the user updates the node "The Holy Trinity"
      Then the request should be rejected with status code 404
