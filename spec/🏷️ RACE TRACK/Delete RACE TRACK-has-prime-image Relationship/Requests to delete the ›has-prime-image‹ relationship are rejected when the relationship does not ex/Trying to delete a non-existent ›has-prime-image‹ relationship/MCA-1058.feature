@REQ_MCA-1050
Feature: Delete RACE TRACK-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RACE TRACKS
  So I can clean up bad data or test data

  @RULE_MCA-1057
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-1058 @implemented
    Scenario: Trying to delete a non-existent ›has-prime-image‹ relationship
      Given there exists a "RACE TRACK" "Hockenheimring"
      And there exists a "IMAGE" "grand-stand"
      And there exists NO "has prime image" relationship between "Hockenheimring" and "grand-stand"
      When the user deletes the "has prime image" relationship between "Hockenheimring" and "grand-stand"
      Then the request should be rejected with status code 404
