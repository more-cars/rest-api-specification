@REQ_MCA-5634
Feature: Update RACING SESSION Node
  As an API contributor
  I want to be able to update a RACING SESSION
  So I can add missing information or fix incorrect data

  @RULE_MCA-5639
  Rule: Updating a RACING SESSION changes the updated_at timestamp

    @TEST_MCA-5640 @implemented
    Scenario: Expecting the updated_at timestamp to change when updating a RACING SESSION
      Given there exists a "RACING SESSION" "Qualifying"
      When the user updates the node "Qualifying"
      Then both timestamps in the response should be different
