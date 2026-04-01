@REQ_MCA-5044
Feature: Create MODEL CAR BRAND-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a MODEL CAR BRAND
  So an API consumer can instantly load the VIDEO that best represents the MODEL CAR BRAND

  @RULE_MCA-5047
  Rule: Requests to create a ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5049 @implemented
    Scenario: Trying to create a ›has-main-video‹ relationship with invalid VIDEO ID
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And "VIDEO" "Promo Video" does NOT exist
      When the user creates a "has-main-video" relationship between "Hot Wheels" and "Promo Video"
      Then the request should be rejected with status code 404
