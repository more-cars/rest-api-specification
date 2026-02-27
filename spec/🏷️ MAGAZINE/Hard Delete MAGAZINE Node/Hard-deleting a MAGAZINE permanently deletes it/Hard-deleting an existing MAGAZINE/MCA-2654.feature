@REQ_MCA-2652
Feature: Hard Delete MAGAZINE Node
  As an API contributor
  I want to be able to delete a MAGAZINE
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-2653
  Rule: Hard-deleting a MAGAZINE permanently deletes it

    @TEST_MCA-2654
    Scenario: Hard-deleting an existing MAGAZINE
      Given there exists a "MAGAZINE" "ComputerBild"
      When the user hard-deletes the "MAGAZINE" "ComputerBild"
      Then the response should return with status code 204
      And the "MAGAZINE" "ComputerBild" should not exist anymore
