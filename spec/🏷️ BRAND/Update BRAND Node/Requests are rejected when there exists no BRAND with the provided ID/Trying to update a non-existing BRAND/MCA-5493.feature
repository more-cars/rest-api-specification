@REQ_MCA-5489
Feature: Update BRAND Node
  As an API contributor
  I want to be able to update a BRAND
  So I can add missing information or fix incorrect data

  @RULE_MCA-5492
  Rule: Requests are rejected when there exists no BRAND with the provided ID

    @TEST_MCA-5493 @implemented
    Scenario: Trying to update a non-existing BRAND
      Given "BRAND" "BMW" does NOT exist
      When the user updates the node "BMW"
      Then the request should be rejected with status code 404
