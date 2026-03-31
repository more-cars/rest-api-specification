@REQ_MCA-4374
Feature: Create COMPANY-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a COMPANY
  So an API consumer can instantly load the VIDEO that best represents the COMPANY

  @RULE_MCA-4377
  Rule: Requests to create a ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4379
    Scenario: Trying to create a ›has-main-video‹ relationship with invalid VIDEO ID
      Given there exists a "COMPANY" "BMW AG"
      And "VIDEO" "Promo Video" does NOT exist
      When the user creates a "has-main-video" relationship between "BMW AG" and "Promo Video"
      Then the request should be rejected with status code 404
