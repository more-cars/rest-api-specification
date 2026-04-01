@REQ_MCA-4967
Feature: Delete MODEL CAR-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from MODEL CARS
  So I can clean up bad data or test data

  @RULE_MCA-4968
  Rule: The ›has-video‹ relationship is deleted when the provided data is valid

    @TEST_MCA-4969 @implemented
    Scenario: Deleting the ›has-video‹ relationship when it actually exists
      Given there exists a "MODEL CAR" "Hot Wheels F40"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-video" relationship "R" between "Hot Wheels F40" and "Promo Video"
      When the user deletes the "has-video" relationship between "Hot Wheels F40" and "Promo Video"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
