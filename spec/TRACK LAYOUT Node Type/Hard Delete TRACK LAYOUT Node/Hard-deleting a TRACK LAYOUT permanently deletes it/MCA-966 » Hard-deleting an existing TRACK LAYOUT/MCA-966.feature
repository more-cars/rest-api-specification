@REQ_MCA-964
Feature: Hard Delete TRACK LAYOUT Node
  As an API contributor
  I want to be able to delete a TRACK LAYOUT
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-965
  Rule: Hard-deleting a TRACK LAYOUT permanently deletes it

    @TEST_MCA-966 @implemented
    Scenario: Hard-deleting an existing TRACK LAYOUT
      Given there exists a "TRACK LAYOUT" "GP Circuit"
      When the user hard-deletes the "TRACK LAYOUT" "GP Circuit"
      Then the response should return with status code 204
      And the "TRACK LAYOUT" "GP Circuit" should not exist anymore
