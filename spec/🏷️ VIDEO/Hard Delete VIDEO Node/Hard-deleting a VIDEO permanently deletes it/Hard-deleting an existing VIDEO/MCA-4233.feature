@REQ_MCA-4231
Feature: Hard Delete VIDEO Node
  As an API contributor
  I want to be able to delete a VIDEO
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-4232
  Rule: Hard-deleting a VIDEO permanently deletes it

    @TEST_MCA-4233
    Scenario: Hard-deleting an existing VIDEO
      Given there exists a "VIDEO" "P1 vs F40"
      When the user hard-deletes the "VIDEO" "P1 vs F40"
      Then the response should return with status code 204
      And the "VIDEO" "P1 vs F40" should not exist anymore
