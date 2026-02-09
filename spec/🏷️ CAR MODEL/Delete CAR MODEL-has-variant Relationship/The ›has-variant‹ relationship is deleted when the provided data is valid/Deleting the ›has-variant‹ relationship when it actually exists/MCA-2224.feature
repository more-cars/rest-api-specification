@REQ_MCA-2222
Feature: Delete CAR MODEL-has-variant Relationship
  As an API contributor
  I want to be able to disconnect CAR MODEL VARIANTS from CAR MODELS
  So I can clean up bad data or test data

  @RULE_MCA-2223
  Rule: The ›has-variant‹ relationship is deleted when the provided data is valid

    @TEST_MCA-2224 @implemented
    Scenario: Deleting the ›has-variant‹ relationship when it actually exists
      Given there exists a "CAR MODEL" "Golf"
      And there exists a "CAR MODEL VARIANT" "Renault Twingo 1.2"
      And there exists a "has variant" relationship "R" between "Golf" and "Renault Twingo 1.2"
      When the user deletes the "has variant" relationship between "Golf" and "Renault Twingo 1.2"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
