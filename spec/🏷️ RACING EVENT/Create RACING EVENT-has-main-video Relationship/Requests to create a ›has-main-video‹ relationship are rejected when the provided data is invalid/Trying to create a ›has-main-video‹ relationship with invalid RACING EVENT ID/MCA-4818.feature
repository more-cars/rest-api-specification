@REQ_MCA-4814
Feature: Create RACING EVENT-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a RACING EVENT
  So an API consumer can instantly load the VIDEO that best represents the RACING EVENT

  @RULE_MCA-4817
  Rule: Requests to create a ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4818
    Scenario: Trying to create a ›has-main-video‹ relationship with invalid RACING EVENT ID
      Given "RACING EVENT" "F1 GP Monaco" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-main-video" relationship between "F1 GP Monaco" and "Promo Video"
      Then the request should be rejected with status code 404
