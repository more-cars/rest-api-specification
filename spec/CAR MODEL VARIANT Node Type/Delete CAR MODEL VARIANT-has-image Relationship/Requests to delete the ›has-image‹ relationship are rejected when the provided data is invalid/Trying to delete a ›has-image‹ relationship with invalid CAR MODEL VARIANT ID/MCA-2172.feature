@REQ_MCA-2168
Feature: Delete CAR MODEL VARIANT-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-2171
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2172 @implemented
    Scenario: Trying to delete a ›has-image‹ relationship with invalid CAR MODEL VARIANT ID
      Given "CAR MODEL VARIANT" "BMW M3" does NOT exist
      And there exists a "IMAGE" "Toyota logo"
      When the user deletes the "has image" relationship between "BMW M3" and "Toyota logo"
      Then the request should be rejected with status code 404
