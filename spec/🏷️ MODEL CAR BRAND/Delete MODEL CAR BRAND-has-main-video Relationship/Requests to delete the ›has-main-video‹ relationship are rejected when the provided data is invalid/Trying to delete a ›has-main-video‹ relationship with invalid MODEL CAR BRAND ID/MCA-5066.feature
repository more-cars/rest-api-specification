@REQ_MCA-5062
Feature: Delete MODEL CAR BRAND-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a MODEL CAR BRAND
  So I can clean up bad data or test data

  @RULE_MCA-5065
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5066 @implemented
    Scenario: Trying to delete a ›has-main-video‹ relationship with invalid MODEL CAR BRAND ID
      Given "MODEL CAR BRAND" "Hot Wheels" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user deletes the "has-main-video" relationship between "Hot Wheels" and "Promo Video"
      Then the request should be rejected with status code 404
