@REQ_MCA-4419
Feature: Delete CAR MODEL-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from CAR MODELS
  So I can clean up bad data or test data

  @RULE_MCA-4426
  Rule: Requests to delete the ›has-video‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-4427 @implemented
    Scenario: Trying to delete a non-existent ›has-video‹ relationship
      Given there exists a "CAR MODEL" "Testarossa"
      And there exists a "VIDEO" "Promo Video"
      And there exists NO "has-video" relationship between "Testarossa" and "Promo Video"
      When the user deletes the "has-video" relationship between "Testarossa" and "Promo Video"
      Then the request should be rejected with status code 404
