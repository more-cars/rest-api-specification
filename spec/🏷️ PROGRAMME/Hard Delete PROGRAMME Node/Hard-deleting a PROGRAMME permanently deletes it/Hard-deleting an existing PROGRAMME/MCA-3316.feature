@REQ_MCA-3314
Feature: Hard Delete PROGRAMME Node
  As an API contributor
  I want to be able to delete a PROGRAMME
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-3315
  Rule: Hard-deleting a PROGRAMME permanently deletes it

    @TEST_MCA-3316
    Scenario: Hard-deleting an existing PROGRAMME
      Given there exists a "PROGRAMME" "Top Gear"
      When the user hard-deletes the "PROGRAMME" "Top Gear"
      Then the response should return with status code 204
      And the "PROGRAMME" "Top Gear" should not exist anymore
