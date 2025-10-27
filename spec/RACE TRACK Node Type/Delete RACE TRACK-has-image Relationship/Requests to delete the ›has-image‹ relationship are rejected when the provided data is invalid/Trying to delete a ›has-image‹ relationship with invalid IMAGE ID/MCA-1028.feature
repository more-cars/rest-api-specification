@REQ_MCA-1023
Feature: Delete RACE TRACK-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RACE TRACKS
  So I can clean up bad data or test data

  @RULE_MCA-1026
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1028 @implemented
    Scenario: Trying to delete a ›has-image‹ relationship with invalid IMAGE ID
      Given there exists a "RACE TRACK" "Hockenheimring"
      And "IMAGE" "rally-track" does NOT exist
      When the user deletes the "has image" relationship between "Hockenheimring" and "rally-track"
      Then the request should be rejected with status code 404
