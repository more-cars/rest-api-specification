@REQ_MCA-4062
Feature: Hard Delete PRICE Node
  As an API contributor
  I want to be able to delete a PRICE
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-4063
  Rule: Hard-deleting a PRICE permanently deletes it

    @TEST_MCA-4064
    Scenario: Hard-deleting an existing PRICE
      Given there exists a "PRICE" "Test Price"
      When the user hard-deletes the "PRICE" "Test Price"
      Then the response should return with status code 204
      And the "PRICE" "Test Price" should not exist anymore
