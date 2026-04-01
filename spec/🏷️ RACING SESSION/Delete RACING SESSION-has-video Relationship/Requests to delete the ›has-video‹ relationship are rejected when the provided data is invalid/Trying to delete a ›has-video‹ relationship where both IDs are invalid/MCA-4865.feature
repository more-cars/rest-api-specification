@REQ_MCA-4859
Feature: Delete RACING SESSION-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from RACING SESSIONS
  So I can clean up bad data or test data

  @RULE_MCA-4862
  Rule: Requests to delete the ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4865 @implemented
    Scenario: Trying to delete a ›has-video‹ relationship where both IDs are invalid
      Given "RACING SESSION" "Qualifying" does NOT exist
      And "VIDEO" "Promo Video" does NOT exist
      When the user deletes the "has-video" relationship between "Qualifying" and "Promo Video"
      Then the request should be rejected with status code 404
