@REQ_MCA-293
Feature: Delete CAR MODEL-has-prime-image Relationship
  As an API contributor\
  I want to be able to detach the prime IMAGE from a CAR MODEL\
  So I can clean up bad data or test data

  @RULE_MCA-406
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-424 @implemented
    Scenario: Trying to delete a ›has-prime-image‹ relationship with invalid CAR MODEL  ID
      Given "CAR MODEL" "Mondeo" does NOT exist
      And there exists an "IMAGE" "front-left.jpg"
      When the user deletes the "has prime image" relationship between "Mondeo" and "front-left.jpg"
      Then the request should be rejected with status code 404
