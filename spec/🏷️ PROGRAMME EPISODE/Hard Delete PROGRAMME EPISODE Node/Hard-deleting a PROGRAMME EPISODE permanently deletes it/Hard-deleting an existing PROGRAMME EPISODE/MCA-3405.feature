@REQ_MCA-3403
Feature: Hard Delete PROGRAMME EPISODE Node
  As an API contributor
  I want to be able to delete a PROGRAMME EPISODE
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-3404
  Rule: Hard-deleting a PROGRAMME EPISODE permanently deletes it

    @TEST_MCA-3405 @implemented
    Scenario: Hard-deleting an existing PROGRAMME EPISODE
      Given there exists a "PROGRAMME EPISODE" "Top Gear"
      When the user hard-deletes the "PROGRAMME EPISODE" "Top Gear"
      Then the response should return with status code 204
      And the "PROGRAMME EPISODE" "Top Gear" should not exist anymore
