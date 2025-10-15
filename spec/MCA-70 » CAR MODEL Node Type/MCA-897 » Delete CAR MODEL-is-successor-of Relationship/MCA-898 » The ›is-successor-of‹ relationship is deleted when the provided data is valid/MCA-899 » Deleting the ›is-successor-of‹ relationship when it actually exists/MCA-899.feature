@REQ_MCA-897
Feature: Delete CAR MODEL-is-successor-of Relationship
  As an API contributor
  I want to be able to disconnect CAR MODELS from CAR MODELS
  So I can clean up bad data or test data

  @RULE_MCA-898
  Rule: The ›is-successor-of‹ relationship is deleted when the provided data is valid

    @TEST_MCA-899 @implemented
    Scenario: Deleting the ›is-successor-of‹ relationship when it actually exists
      Given there exists a "CAR MODEL" "Golf IV"
      And there exists a "CAR MODEL" "Corsa C"
      And there exists a "is successor of" relationship "R" between "Golf IV" and "Corsa C"
      When the user deletes the "is successor of" relationship between "Golf IV" and "Corsa C"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
