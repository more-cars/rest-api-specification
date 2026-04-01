@REQ_MCA-4428
Feature: Create CAR MODEL-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a CAR MODEL
  So an API consumer can instantly load the VIDEO that best represents the CAR MODEL

  @RULE_MCA-4431
  Rule: Requests to create a ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4434 @implemented
    Scenario: Trying to create a ›has-main-video‹ relationship where both IDs are invalid
      Given "CAR MODEL" "Testarossa" does NOT exist
      And "VIDEO" "Promo Video" does NOT exist
      When the user creates a "has-main-video" relationship between "Testarossa" and "Promo Video"
      Then the request should be rejected with status code 404
