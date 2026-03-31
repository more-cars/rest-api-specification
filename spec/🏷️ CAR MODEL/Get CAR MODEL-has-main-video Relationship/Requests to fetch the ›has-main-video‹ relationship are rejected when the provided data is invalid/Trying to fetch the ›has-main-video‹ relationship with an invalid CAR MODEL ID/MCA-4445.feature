@REQ_MCA-4439
Feature: Get CAR MODEL-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a CAR MODEL
  So I can instantly load the VIDEO that best represents the CAR MODEL

  @RULE_MCA-4444
  Rule: Requests to fetch the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4445
    Scenario: Trying to fetch the ›has-main-video‹ relationship with an invalid CAR MODEL ID
      Given "CAR MODEL" "Testarossa" does NOT exist
      When the user requests the "has-main-video" relationship for "Testarossa"
      Then the request should be rejected with status code 404
