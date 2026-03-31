@REQ_MCA-4473
Feature: Delete CAR MODEL VARIANT-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-4480
  Rule: Requests to delete the ›has-video‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-4481
    Scenario: Trying to delete a non-existent ›has-video‹ relationship
      Given there exists a "CAR MODEL VARIANT" "BMW M3 CSL"
      And there exists a "VIDEO" "Promo Video"
      And there exists NO "has-video" relationship between "BMW M3 CSL" and "Promo Video"
      When the user deletes the "has-video" relationship between "BMW M3 CSL" and "Promo Video"
      Then the request should be rejected with status code 404
