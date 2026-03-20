@REQ_MCA-3964
Feature: Hard Delete MODEL CAR BRAND Node
  As an API contributor
  I want to be able to delete a MODEL CAR BRAND
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-3965
  Rule: Hard-deleting a MODEL CAR BRAND permanently deletes it

    @TEST_MCA-3966 @implemented
    Scenario: Hard-deleting an existing MODEL CAR BRAND
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      When the user hard-deletes the "MODEL CAR BRAND" "Hot Wheels"
      Then the response should return with status code 204
      And the "MODEL CAR BRAND" "Hot Wheels" should not exist anymore
