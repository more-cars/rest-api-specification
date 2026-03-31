@REQ_MCA-4493
Feature: Get CAR MODEL VARIANT-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a CAR MODEL VARIANT
  So I can instantly load the VIDEO that best represents the CAR MODEL VARIANT

  @RULE_MCA-4498
  Rule: Requests to fetch the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4499
    Scenario: Trying to fetch the ›has-main-video‹ relationship with an invalid CAR MODEL VARIANT ID
      Given "CAR MODEL VARIANT" "BMW M3 CSL" does NOT exist
      When the user requests the "has-main-video" relationship for "BMW M3 CSL"
      Then the request should be rejected with status code 404
