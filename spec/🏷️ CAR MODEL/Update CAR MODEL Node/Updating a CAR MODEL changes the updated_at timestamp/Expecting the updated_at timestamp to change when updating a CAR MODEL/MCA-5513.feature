@REQ_MCA-5507
Feature: Update CAR MODEL Node
  As an API contributor
  I want to be able to update a CAR MODEL
  So I can add missing information or fix incorrect data

  @RULE_MCA-5512
  Rule: Updating a CAR MODEL changes the updated_at timestamp

    @TEST_MCA-5513 @implemented
    Scenario: Expecting the updated_at timestamp to change when updating a CAR MODEL
      Given there exists a "CAR MODEL" "Corolla"
      When the user updates the node "Corolla"
      Then both timestamps in the response should be different
