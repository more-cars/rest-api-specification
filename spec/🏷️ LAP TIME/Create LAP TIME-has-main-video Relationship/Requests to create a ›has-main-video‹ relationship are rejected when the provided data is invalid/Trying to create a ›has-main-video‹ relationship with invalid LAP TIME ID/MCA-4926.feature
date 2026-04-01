@REQ_MCA-4922
Feature: Create LAP TIME-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a LAP TIME
  So an API consumer can instantly load the VIDEO that best represents the LAP TIME

  @RULE_MCA-4925
  Rule: Requests to create a ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4926 @implemented
    Scenario: Trying to create a ›has-main-video‹ relationship with invalid LAP TIME ID
      Given "LAP TIME" "Fastest Lap" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-main-video" relationship between "Fastest Lap" and "Promo Video"
      Then the request should be rejected with status code 404
