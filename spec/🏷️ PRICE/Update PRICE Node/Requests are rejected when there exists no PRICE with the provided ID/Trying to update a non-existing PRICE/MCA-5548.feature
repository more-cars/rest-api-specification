@REQ_MCA-5544
Feature: Update PRICE Node
  As an API contributor
  I want to be able to update a PRICE
  So I can add missing information or fix incorrect data

  @RULE_MCA-5547
  Rule: Requests are rejected when there exists no PRICE with the provided ID

    @TEST_MCA-5548 @implemented
    Scenario: Trying to update a non-existing PRICE
      Given "PRICE" "Base price" does NOT exist
      When the user updates the node "Base price"
      Then the request should be rejected with status code 404
