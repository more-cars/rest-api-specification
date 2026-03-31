@REQ_MCA-4805
Feature: Delete RACING EVENT-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from RACING EVENTS
  So I can clean up bad data or test data

  @RULE_MCA-4808
  Rule: Requests to delete the ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4809
    Scenario: Trying to delete a ›has-video‹ relationship with invalid RACING EVENT ID
      Given "RACING EVENT" "F1 GP Monaco" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user deletes the "has-video" relationship between "F1 GP Monaco" and "Promo Video"
      Then the request should be rejected with status code 404
