@REQ_MCA-4760
Feature: Create RACING SERIES-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a RACING SERIES
  So an API consumer can instantly load the VIDEO that best represents the RACING SERIES

  @RULE_MCA-4763
  Rule: Requests to create a ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4765 @implemented
    Scenario: Trying to create a ›has-main-video‹ relationship with invalid VIDEO ID
      Given there exists a "RACING SERIES" "Formula 1"
      And "VIDEO" "Promo Video" does NOT exist
      When the user creates a "has-main-video" relationship between "Formula 1" and "Promo Video"
      Then the request should be rejected with status code 404
