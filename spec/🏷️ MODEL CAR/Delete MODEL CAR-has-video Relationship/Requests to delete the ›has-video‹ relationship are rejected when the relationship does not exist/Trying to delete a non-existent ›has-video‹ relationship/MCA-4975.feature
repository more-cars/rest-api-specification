@REQ_MCA-4967
Feature: Delete MODEL CAR-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from MODEL CARS
  So I can clean up bad data or test data

  @RULE_MCA-4974
  Rule: Requests to delete the ›has-video‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-4975 @implemented
    Scenario: Trying to delete a non-existent ›has-video‹ relationship
      Given there exists a "MODEL CAR" "Hot Wheels F40"
      And there exists a "VIDEO" "Promo Video"
      And there exists NO "has-video" relationship between "Hot Wheels F40" and "Promo Video"
      When the user deletes the "has-video" relationship between "Hot Wheels F40" and "Promo Video"
      Then the request should be rejected with status code 404
