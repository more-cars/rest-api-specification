@REQ_MCA-1867
Feature: Hard Delete LAP TIME Node
  As an API contributor
  I want to be able to delete a LAP TIME
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-1868
  Rule: Hard-deleting a LAP TIME permanently deletes it

    @TEST_MCA-1869 @implemented
    Scenario: Hard-deleting an existing LAP TIME
      Given there exists a "LAP TIME" "test lap"
      When the user hard-deletes the "LAP TIME" "test lap"
      Then the response should return with status code 204
      And the "LAP TIME" "test lap" should not exist anymore
