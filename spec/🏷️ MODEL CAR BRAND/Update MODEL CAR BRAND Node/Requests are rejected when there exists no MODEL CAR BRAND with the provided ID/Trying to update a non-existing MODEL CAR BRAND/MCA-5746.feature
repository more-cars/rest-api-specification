@REQ_MCA-5742
Feature: Update MODEL CAR BRAND Node
  As an API contributor
  I want to be able to update a MODEL CAR BRAND
  So I can add missing information or fix incorrect data

  @RULE_MCA-5745
  Rule: Requests are rejected when there exists no MODEL CAR BRAND with the provided ID

    @TEST_MCA-5746 @implemented
    Scenario: Trying to update a non-existing MODEL CAR BRAND
      Given "MODEL CAR BRAND" "Hot Wheels" does NOT exist
      When the user updates the node "Hot Wheels"
      Then the request should be rejected with status code 404
