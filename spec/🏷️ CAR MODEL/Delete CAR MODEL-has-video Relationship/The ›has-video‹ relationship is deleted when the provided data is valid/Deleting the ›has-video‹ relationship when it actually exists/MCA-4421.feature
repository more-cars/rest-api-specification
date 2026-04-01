@REQ_MCA-4419
Feature: Delete CAR MODEL-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from CAR MODELS
  So I can clean up bad data or test data

  @RULE_MCA-4420
  Rule: The ›has-video‹ relationship is deleted when the provided data is valid

    @TEST_MCA-4421 @implemented
    Scenario: Deleting the ›has-video‹ relationship when it actually exists
      Given there exists a "CAR MODEL" "Testarossa"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-video" relationship "R" between "Testarossa" and "Promo Video"
      When the user deletes the "has-video" relationship between "Testarossa" and "Promo Video"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
