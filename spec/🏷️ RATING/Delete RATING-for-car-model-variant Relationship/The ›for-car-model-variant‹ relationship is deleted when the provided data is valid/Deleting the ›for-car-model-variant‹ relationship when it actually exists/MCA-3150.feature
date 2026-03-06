@REQ_MCA-3148
Feature: Delete RATING-for-car-model-variant Relationship
  As an API contributor
  I want to be able to disconnect CAR MODEL VARIANTS from RATINGS
  So I can clean up bad data or test data

  @RULE_MCA-3149
  Rule: The ›for-car-model-variant‹ relationship is deleted when the provided data is valid

    @TEST_MCA-3150 @implemented
    Scenario: Deleting the ›for-car-model-variant‹ relationship when it actually exists
      Given there exists a "RATING" "invalid rating"
      And there exists a "CAR MODEL VARIANT" "McLaren 750S"
      And there exists a "for car model variant" relationship "R" between "invalid rating" and "McLaren 750S"
      When the user deletes the "for car model variant" relationship between "invalid rating" and "McLaren 750S"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
