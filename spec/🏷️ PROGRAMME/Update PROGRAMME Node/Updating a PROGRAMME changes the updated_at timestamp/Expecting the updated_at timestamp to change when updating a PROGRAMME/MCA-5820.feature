@REQ_MCA-5814
Feature: Update PROGRAMME Node
  As an API contributor
  I want to be able to update a PROGRAMME
  So I can add missing information or fix incorrect data

  @RULE_MCA-5819
  Rule: Updating a PROGRAMME changes the updated_at timestamp

    @TEST_MCA-5820 @implemented
    Scenario: Expecting the updated_at timestamp to change when updating a PROGRAMME
      Given there exists a "PROGRAMME" "The Grand Tour"
      When the user updates the node "The Grand Tour"
      Then both timestamps in the response should be different
