@REQ_MCA-5044
Feature: Create MODEL CAR BRAND-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a MODEL CAR BRAND
  So an API consumer can instantly load the VIDEO that best represents the MODEL CAR BRAND

  @RULE_MCA-5047
  Rule: Requests to create a ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5048
    Scenario: Trying to create a ›has-main-video‹ relationship with invalid MODEL CAR BRAND ID
      Given "MODEL CAR BRAND" "Hot Wheels" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-main-video" relationship between "Hot Wheels" and "Promo Video"
      Then the request should be rejected with status code 404
