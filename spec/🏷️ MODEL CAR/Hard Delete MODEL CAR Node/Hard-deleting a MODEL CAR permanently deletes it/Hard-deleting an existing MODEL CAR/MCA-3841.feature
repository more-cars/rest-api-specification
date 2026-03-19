@REQ_MCA-3839
Feature: Hard Delete MODEL CAR Node
  As an API contributor
  I want to be able to delete a MODEL CAR
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-3840
  Rule: Hard-deleting a MODEL CAR permanently deletes it

    @TEST_MCA-3841
    Scenario: Hard-deleting an existing MODEL CAR
      Given there exists a "MODEL CAR" "F40 Matchbox"
      When the user hard-deletes the "MODEL CAR" "F40 Matchbox"
      Then the response should return with status code 204
      And the "MODEL CAR" "F40 Matchbox" should not exist anymore
