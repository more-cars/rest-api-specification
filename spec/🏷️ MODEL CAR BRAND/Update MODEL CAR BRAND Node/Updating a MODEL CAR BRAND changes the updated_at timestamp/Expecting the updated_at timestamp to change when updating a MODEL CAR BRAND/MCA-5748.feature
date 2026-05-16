@REQ_MCA-5742
Feature: Update MODEL CAR BRAND Node
  As an API contributor
  I want to be able to update a MODEL CAR BRAND
  So I can add missing information or fix incorrect data

  @RULE_MCA-5747
  Rule: Updating a MODEL CAR BRAND changes the updated_at timestamp

    @TEST_MCA-5748 @implemented
    Scenario: Expecting the updated_at timestamp to change when updating a MODEL CAR BRAND
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      When the user updates the node "Hot Wheels"
      Then both timestamps in the response should be different
