@REQ_MCA-4482
Feature: Create CAR MODEL VARIANT-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a CAR MODEL VARIANT
  So an API consumer can instantly load the VIDEO that best represents the CAR MODEL VARIANT

  @RULE_MCA-4485
  Rule: Requests to create a ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4486 @implemented
    Scenario: Trying to create a ›has-main-video‹ relationship with invalid CAR MODEL VARIANT ID
      Given "CAR MODEL VARIANT" "BMW M3 CSL" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-main-video" relationship between "BMW M3 CSL" and "Promo Video"
      Then the request should be rejected with status code 404
