@REQ_MCA-5525
Feature: Update CAR MODEL VARIANT Node
  As an API contributor
  I want to be able to update a CAR MODEL VARIANT
  So I can add missing information or fix incorrect data

  @RULE_MCA-5528
  Rule: Requests are rejected when there exists no CAR MODEL VARIANT with the provided ID

    @TEST_MCA-5529 @implemented
    Scenario: Trying to update a non-existing CAR MODEL VARIANT
      Given "CAR MODEL VARIANT" "BMW M3 CSL" does NOT exist
      When the user updates the node "BMW M3 CSL"
      Then the request should be rejected with status code 404
