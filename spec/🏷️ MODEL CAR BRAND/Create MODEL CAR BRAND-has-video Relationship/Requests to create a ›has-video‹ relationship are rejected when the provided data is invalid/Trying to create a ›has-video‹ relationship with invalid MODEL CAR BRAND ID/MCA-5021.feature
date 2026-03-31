@REQ_MCA-5017
Feature: Create MODEL CAR BRAND-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a MODEL CAR BRAND
  So an API consumer can illustrate the MODEL CAR BRAND node in a frontend application

  @RULE_MCA-5020
  Rule: Requests to create a ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5021
    Scenario: Trying to create a ›has-video‹ relationship with invalid MODEL CAR BRAND ID
      Given "MODEL CAR BRAND" "Hot Wheels" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-video" relationship between "Hot Wheels" and "Promo Video"
      Then the request should be rejected with status code 404
