@REQ_MCA-4455
Feature: Create CAR MODEL VARIANT-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a CAR MODEL VARIANT
  So an API consumer can illustrate the CAR MODEL VARIANT node in a frontend application

  @RULE_MCA-4458
  Rule: Requests to create a ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4459
    Scenario: Trying to create a ›has-video‹ relationship with invalid CAR MODEL VARIANT ID
      Given "CAR MODEL VARIANT" "BMW M3 CSL" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-video" relationship between "BMW M3 CSL" and "Promo Video"
      Then the request should be rejected with status code 404
