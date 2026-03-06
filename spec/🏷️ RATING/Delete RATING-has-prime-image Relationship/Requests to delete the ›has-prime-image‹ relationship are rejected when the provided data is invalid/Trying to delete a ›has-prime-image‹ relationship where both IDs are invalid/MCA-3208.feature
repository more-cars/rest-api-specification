@REQ_MCA-3202
Feature: Delete RATING-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RATINGS
  So I can clean up bad data or test data

  @RULE_MCA-3205
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3208 @implemented
    Scenario: Trying to delete a ›has-prime-image‹ relationship where both IDs are invalid
      Given "RATING" "93 Percent" does NOT exist
      And "IMAGE" "race track map" does NOT exist
      When the user deletes the "has prime image" relationship between "93 Percent" and "race track map"
      Then the request should be rejected with status code 404
