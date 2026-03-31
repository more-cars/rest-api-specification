@REQ_MCA-5314
Feature: Create MOTOR SHOW-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a MOTOR SHOW
  So an API consumer can instantly load the VIDEO that best represents the MOTOR SHOW

  @RULE_MCA-5317
  Rule: Requests to create a ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5319
    Scenario: Trying to create a ›has-main-video‹ relationship with invalid VIDEO ID
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And "VIDEO" "Promo Video" does NOT exist
      When the user creates a "has-main-video" relationship between "IAA Frankfurt" and "Promo Video"
      Then the request should be rejected with status code 404
