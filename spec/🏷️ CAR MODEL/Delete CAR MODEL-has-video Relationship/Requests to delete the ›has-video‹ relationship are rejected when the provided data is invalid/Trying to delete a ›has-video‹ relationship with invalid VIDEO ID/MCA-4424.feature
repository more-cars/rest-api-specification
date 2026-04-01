@REQ_MCA-4419
Feature: Delete CAR MODEL-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from CAR MODELS
  So I can clean up bad data or test data

  @RULE_MCA-4422
  Rule: Requests to delete the ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4424 @implemented
    Scenario: Trying to delete a ›has-video‹ relationship with invalid VIDEO ID
      Given there exists a "CAR MODEL" "Testarossa"
      And "VIDEO" "Promo Video" does NOT exist
      When the user deletes the "has-video" relationship between "Testarossa" and "Promo Video"
      Then the request should be rejected with status code 404
