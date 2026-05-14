@REQ_MCA-5598
Feature: Update RACING SERIES Node
  As an API contributor
  I want to be able to update a RACING SERIES
  So I can add missing information or fix incorrect data

  @RULE_MCA-5603
  Rule: Updating a RACING SERIES changes the updated_at timestamp

    @TEST_MCA-5604 @implemented
    Scenario: Expecting the updated_at timestamp to change when updating a RACING SERIES
      Given there exists a "RACING SERIES" "Formula 1"
      When the user updates the node "Formula 1"
      Then both timestamps in the response should be different
