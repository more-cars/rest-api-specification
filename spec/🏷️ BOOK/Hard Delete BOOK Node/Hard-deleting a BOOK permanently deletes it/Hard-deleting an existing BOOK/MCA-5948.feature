@REQ_MCA-5946
Feature: Hard Delete BOOK Node
  As an API contributor
  I want to be able to delete a BOOK
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-5947
  Rule: Hard-deleting a BOOK permanently deletes it

    @TEST_MCA-5948 @implemented
    Scenario: Hard-deleting an existing BOOK
      Given there exists a "BOOK" "F1 in Numbers"
      When the user hard-deletes the "BOOK" "F1 in Numbers"
      Then the response should return with status code 204
      And the "BOOK" "F1 in Numbers" should not exist anymore
