@REQ_MCA-5616
Feature: Update RACING EVENT Node
  As an API contributor
  I want to be able to update a RACING EVENT
  So I can add missing information or fix incorrect data

  @RULE_MCA-5619
  Rule: Requests are rejected when there exists no RACING EVENT with the provided ID

    @TEST_MCA-5620 @implemented
    Scenario: Trying to update a non-existing RACING EVENT
      Given "RACING EVENT" "GP Monaco" does NOT exist
      When the user updates the node "GP Monaco"
      Then the request should be rejected with status code 404
