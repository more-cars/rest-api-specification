@REQ_MCA-3148
Feature: Delete RATING-for-car-model-variant Relationship
  As an API contributor
  I want to be able to disconnect CAR MODEL VARIANTS from RATINGS
  So I can clean up bad data or test data

  @RULE_MCA-3155
  Rule: Requests to delete the ›for-car-model-variant‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-3156 @implemented
    Scenario: Trying to delete a non-existent ›for-car-model-variant‹ relationship
      Given there exists a "RATING" "invalid rating"
      And there exists a "CAR MODEL VARIANT" "McLaren 750S"
      And there exists NO "for car model variant" relationship between "invalid rating" and "McLaren 750S"
      When the user deletes the "for car model variant" relationship between "invalid rating" and "McLaren 750S"
      Then the request should be rejected with status code 404
