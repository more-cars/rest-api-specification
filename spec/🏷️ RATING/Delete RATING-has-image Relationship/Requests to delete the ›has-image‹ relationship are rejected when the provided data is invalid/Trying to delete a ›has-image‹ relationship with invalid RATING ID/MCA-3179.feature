@REQ_MCA-3175
Feature: Delete RATING-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RATINGS
  So I can clean up bad data or test data

  @RULE_MCA-3178
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3179 @implemented
    Scenario: Trying to delete a ›has-image‹ relationship with invalid RATING ID
      Given "RATING" "93 Percent" does NOT exist
      And there exists a "IMAGE" "race track map"
      When the user deletes the "has image" relationship between "93 Percent" and "race track map"
      Then the request should be rejected with status code 404
