@REQ_MCA-5832
Feature: Update PROGRAMME EPISODE Node
  As an API contributor
  I want to be able to update a PROGRAMME EPISODE
  So I can add missing information or fix incorrect data

  @RULE_MCA-5837
  Rule: Updating a PROGRAMME EPISODE changes the updated_at timestamp

    @TEST_MCA-5838 @implemented
    Scenario: Expecting the updated_at timestamp to change when updating a PROGRAMME EPISODE
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      When the user updates the node "The Holy Trinity"
      Then both timestamps in the response should be different
