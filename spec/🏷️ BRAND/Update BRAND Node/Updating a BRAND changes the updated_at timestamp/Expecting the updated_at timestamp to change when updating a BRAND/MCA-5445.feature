@REQ_MCA-5439
Feature: Update BRAND Node
  As an API contributor
  I want to be able to update a BRAND
  So I can add missing information or fix incorrect data

  @RULE_MCA-5444
  Rule: Updating a BRAND changes the updated_at timestamp

    @TEST_MCA-5445
    Scenario: Expecting the updated_at timestamp to change when updating a BRAND
      Given there exists a "BRAND" "BMW"
      When the user updates the node "BMW"
      Then both timestamps in the response should be different
