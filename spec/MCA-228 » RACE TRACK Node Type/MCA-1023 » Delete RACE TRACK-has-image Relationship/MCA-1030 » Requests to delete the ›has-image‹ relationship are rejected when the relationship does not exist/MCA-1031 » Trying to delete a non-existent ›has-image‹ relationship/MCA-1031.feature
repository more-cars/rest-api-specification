@REQ_MCA-1023
Feature: Delete RACE TRACK-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RACE TRACKS
  So I can clean up bad data or test data

  @RULE_MCA-1030
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-1031 @implemented
    Scenario: Trying to delete a non-existent ›has-image‹ relationship
      Given there exists a "RACE TRACK" "Hockenheimring"
      And there exists a "IMAGE" "rally-track"
      And there exists NO "has image" relationship between "Hockenheimring" and "rally-track"
      When the user deletes the "has image" relationship between "Hockenheimring" and "rally-track"
      Then the request should be rejected with status code 404
