@REQ_MCA-5062
Feature: Delete MODEL CAR BRAND-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a MODEL CAR BRAND
  So I can clean up bad data or test data

  @RULE_MCA-5065
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5067
    Scenario: Trying to delete a ›has-main-video‹ relationship with invalid VIDEO ID
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And "VIDEO" "Promo Video" does NOT exist
      When the user deletes the "has-main-video" relationship between "Hot Wheels" and "Promo Video"
      Then the request should be rejected with status code 404
