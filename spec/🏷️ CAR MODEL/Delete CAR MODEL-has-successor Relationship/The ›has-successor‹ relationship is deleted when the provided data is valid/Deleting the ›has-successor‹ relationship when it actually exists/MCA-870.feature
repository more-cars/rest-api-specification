@REQ_MCA-868
Feature: Delete CAR MODEL-has-successor Relationship
  As an API contributor
  I want to be able to disconnect CAR MODELS from CAR MODELS
  So I can clean up bad data or test data

  @RULE_MCA-869
  Rule: The ›has-successor‹ relationship is deleted when the provided data is valid

    @TEST_MCA-870 @implemented
    Scenario: Deleting the ›has-successor‹ relationship when it actually exists
      Given there exists a "CAR MODEL" "Colt"
      And there exists a "CAR MODEL" "Impreza"
      And there exists a "has successor" relationship "R" between "Colt" and "Impreza"
      When the user deletes the "has successor" relationship between "Colt" and "Impreza"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
