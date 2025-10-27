@REQ_MCA-1050
Feature: Delete RACE TRACK-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RACE TRACKS
  So I can clean up bad data or test data

  @RULE_MCA-1053
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1054 @implemented
    Scenario: Trying to delete a ›has-prime-image‹ relationship with invalid RACE TRACK ID
      Given "RACE TRACK" "Hockenheimring" does NOT exist
      And there exists a "IMAGE" "grand-stand"
      When the user deletes the "has prime image" relationship between "Hockenheimring" and "grand-stand"
      Then the request should be rejected with status code 404
