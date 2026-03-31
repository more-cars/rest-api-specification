@REQ_MCA-4994
Feature: Delete MODEL CAR-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a MODEL CAR
  So I can clean up bad data or test data

  @RULE_MCA-4997
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4998
    Scenario: Trying to delete a ›has-main-video‹ relationship with invalid MODEL CAR ID
      Given "MODEL CAR" "Hot Wheels F40" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user deletes the "has-main-video" relationship between "Hot Wheels F40" and "Promo Video"
      Then the request should be rejected with status code 404
