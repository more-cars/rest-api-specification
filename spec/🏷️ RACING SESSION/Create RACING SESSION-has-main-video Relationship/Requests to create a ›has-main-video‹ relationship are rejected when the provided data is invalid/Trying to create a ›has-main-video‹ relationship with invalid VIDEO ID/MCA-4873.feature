@REQ_MCA-4868
Feature: Create RACING SESSION-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a RACING SESSION
  So an API consumer can instantly load the VIDEO that best represents the RACING SESSION

  @RULE_MCA-4871
  Rule: Requests to create a ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4873 @implemented
    Scenario: Trying to create a ›has-main-video‹ relationship with invalid VIDEO ID
      Given there exists a "RACING SESSION" "Qualifying"
      And "VIDEO" "Promo Video" does NOT exist
      When the user creates a "has-main-video" relationship between "Qualifying" and "Promo Video"
      Then the request should be rejected with status code 404
