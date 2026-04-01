@REQ_MCA-4940
Feature: Delete LAP TIME-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a LAP TIME
  So I can clean up bad data or test data

  @RULE_MCA-4943
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4944 @implemented
    Scenario: Trying to delete a ›has-main-video‹ relationship with invalid LAP TIME ID
      Given "LAP TIME" "Fastest Lap" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user deletes the "has-main-video" relationship between "Fastest Lap" and "Promo Video"
      Then the request should be rejected with status code 404
