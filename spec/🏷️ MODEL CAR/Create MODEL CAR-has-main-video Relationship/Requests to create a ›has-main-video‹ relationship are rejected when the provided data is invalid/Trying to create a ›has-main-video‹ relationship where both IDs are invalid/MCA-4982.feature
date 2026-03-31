@REQ_MCA-4976
Feature: Create MODEL CAR-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a MODEL CAR
  So an API consumer can instantly load the VIDEO that best represents the MODEL CAR

  @RULE_MCA-4979
  Rule: Requests to create a ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4982
    Scenario: Trying to create a ›has-main-video‹ relationship where both IDs are invalid
      Given "MODEL CAR" "Hot Wheels F40" does NOT exist
      And "VIDEO" "Promo Video" does NOT exist
      When the user creates a "has-main-video" relationship between "Hot Wheels F40" and "Promo Video"
      Then the request should be rejected with status code 404
