@REQ_MCA-5814
Feature: Update PROGRAMME Node
  As an API contributor
  I want to be able to update a PROGRAMME
  So I can add missing information or fix incorrect data

  @RULE_MCA-5817
  Rule: Requests are rejected when there exists no PROGRAMME with the provided ID

    @TEST_MCA-5818 @implemented
    Scenario: Trying to update a non-existing PROGRAMME
      Given "PROGRAMME" "The Grand Tour" does NOT exist
      When the user updates the node "The Grand Tour"
      Then the request should be rejected with status code 404
