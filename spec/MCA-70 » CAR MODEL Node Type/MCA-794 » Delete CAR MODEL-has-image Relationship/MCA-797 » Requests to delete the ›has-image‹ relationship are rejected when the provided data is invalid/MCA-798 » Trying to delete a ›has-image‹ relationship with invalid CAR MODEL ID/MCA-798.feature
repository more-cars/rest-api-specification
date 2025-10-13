@REQ_MCA-794
Feature: Delete CAR MODEL-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from CAR MODELS
  So I can clean up bad data or test data

  @RULE_MCA-797
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-798 @implemented
    Scenario: Trying to delete a ›has-image‹ relationship with invalid CAR MODEL ID
      Given "CAR MODEL" "Corvette" does NOT exist
      And there exists a "IMAGE" "C5 front"
      When the user deletes the "has image" relationship between "Corvette" and "C5 front"
      Then the request should be rejected with status code 404
