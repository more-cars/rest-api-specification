@REQ_MCA-5544
Feature: Update PRICE Node
  As an API contributor
  I want to be able to update a PRICE
  So I can add missing information or fix incorrect data

  @RULE_MCA-5549
  Rule: Updating a PRICE changes the updated_at timestamp

    @TEST_MCA-5550 @implemented
    Scenario: Expecting the updated_at timestamp to change when updating a PRICE
      Given there exists a "PRICE" "Base price"
      When the user updates the node "Base price"
      Then both timestamps in the response should be different
