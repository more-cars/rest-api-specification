@REQ_MCA-4832
Feature: Delete RACING EVENT-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a RACING EVENT
  So I can clean up bad data or test data

  @RULE_MCA-4835
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4838 @implemented
    Scenario: Trying to delete a ›has-main-video‹ relationship where both IDs are invalid
      Given "RACING EVENT" "F1 GP Monaco" does NOT exist
      And "VIDEO" "Promo Video" does NOT exist
      When the user deletes the "has-main-video" relationship between "F1 GP Monaco" and "Promo Video"
      Then the request should be rejected with status code 404
