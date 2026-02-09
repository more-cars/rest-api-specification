@REQ_MCA-2222
Feature: Delete CAR MODEL-has-variant Relationship
  As an API contributor
  I want to be able to disconnect CAR MODEL VARIANTS from CAR MODELS
  So I can clean up bad data or test data

  @RULE_MCA-2225
  Rule: Requests to delete the ›has-variant‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2227 @implemented
    Scenario: Trying to delete a ›has-variant‹ relationship with invalid CAR MODEL VARIANT ID
      Given there exists a "CAR MODEL" "Golf"
      And "CAR MODEL VARIANT" "Renault Twingo 1.2" does NOT exist
      When the user deletes the "has variant" relationship between "Golf" and "Renault Twingo 1.2"
      Then the request should be rejected with status code 404
