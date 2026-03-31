@REQ_MCA-4967
Feature: Delete MODEL CAR-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from MODEL CARS
  So I can clean up bad data or test data

  @RULE_MCA-4970
  Rule: Requests to delete the ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4971
    Scenario: Trying to delete a ›has-video‹ relationship with invalid MODEL CAR ID
      Given "MODEL CAR" "Hot Wheels F40" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user deletes the "has-video" relationship between "Hot Wheels F40" and "Promo Video"
      Then the request should be rejected with status code 404
