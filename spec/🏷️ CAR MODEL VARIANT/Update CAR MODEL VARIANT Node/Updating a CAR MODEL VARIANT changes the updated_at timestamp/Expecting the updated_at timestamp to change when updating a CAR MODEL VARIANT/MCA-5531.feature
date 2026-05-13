@REQ_MCA-5525
Feature: Update CAR MODEL VARIANT Node
  As an API contributor
  I want to be able to update a CAR MODEL VARIANT
  So I can add missing information or fix incorrect data

  @RULE_MCA-5530
  Rule: Updating a CAR MODEL VARIANT changes the updated_at timestamp

    @TEST_MCA-5531 @implemented
    Scenario: Expecting the updated_at timestamp to change when updating a CAR MODEL VARIANT
      Given there exists a "CAR MODEL VARIANT" "BMW M3 CSL"
      When the user updates the node "BMW M3 CSL"
      Then both timestamps in the response should be different
