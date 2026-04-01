@REQ_MCA-4886
Feature: Delete RACING SESSION-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a RACING SESSION
  So I can clean up bad data or test data

  @RULE_MCA-4889
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4890 @implemented
    Scenario: Trying to delete a ›has-main-video‹ relationship with invalid RACING SESSION ID
      Given "RACING SESSION" "Qualifying" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user deletes the "has-main-video" relationship between "Qualifying" and "Promo Video"
      Then the request should be rejected with status code 404
