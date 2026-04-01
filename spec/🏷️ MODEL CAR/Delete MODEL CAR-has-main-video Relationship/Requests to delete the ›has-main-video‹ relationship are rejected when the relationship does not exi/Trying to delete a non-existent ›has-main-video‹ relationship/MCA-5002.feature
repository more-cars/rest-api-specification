@REQ_MCA-4994
Feature: Delete MODEL CAR-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a MODEL CAR
  So I can clean up bad data or test data

  @RULE_MCA-5001
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-5002 @implemented
    Scenario: Trying to delete a non-existent ›has-main-video‹ relationship
      Given there exists a "MODEL CAR" "Hot Wheels F40"
      And there exists a "VIDEO" "Promo Video"
      And there exists NO "has-main-video" relationship between "Hot Wheels F40" and "Promo Video"
      When the user deletes the "has-main-video" relationship between "Hot Wheels F40" and "Promo Video"
      Then the request should be rejected with status code 404
