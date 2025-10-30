@REQ_MCA-2062
Feature: Hard Delete CAR MODEL VARIANT Node
  As an API contributor
  I want to be able to delete a CAR MODEL VARIANT
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-2063
  Rule: Hard-deleting a CAR MODEL VARIANT permanently deletes it

    @TEST_MCA-2064 @implemented
    Scenario: Hard-deleting an existing CAR MODEL VARIANT
      Given there exists a "CAR MODEL VARIANT" "BMW M99"
      When the user hard-deletes the "CAR MODEL VARIANT" "BMW M99"
      Then the response should return with status code 204
      And the "CAR MODEL VARIANT" "BMW M99" should not exist anymore
