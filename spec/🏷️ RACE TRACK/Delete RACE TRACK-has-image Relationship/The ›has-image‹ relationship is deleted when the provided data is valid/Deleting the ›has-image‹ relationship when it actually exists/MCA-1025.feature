@REQ_MCA-1023
Feature: Delete RACE TRACK-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RACE TRACKS
  So I can clean up bad data or test data

  @RULE_MCA-1024
  Rule: The ›has-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-1025 @implemented
    Scenario: Deleting the ›has-image‹ relationship when it actually exists
      Given there exists a "RACE TRACK" "Hockenheimring"
      And there exists a "IMAGE" "rally-track"
      And there exists a "has image" relationship "R" between "Hockenheimring" and "rally-track"
      When the user deletes the "has image" relationship between "Hockenheimring" and "rally-track"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
