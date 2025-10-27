@REQ_MCA-1050
Feature: Delete RACE TRACK-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RACE TRACKS
  So I can clean up bad data or test data

  @RULE_MCA-1051
  Rule: The ›has-prime-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-1052 @implemented
    Scenario: Deleting the ›has-prime-image‹ relationship when it actually exists
      Given there exists a "RACE TRACK" "Hockenheimring"
      And there exists a "IMAGE" "grand-stand"
      And there exists a "has prime image" relationship "R" between "Hockenheimring" and "grand-stand"
      When the user deletes the "has prime image" relationship between "Hockenheimring" and "grand-stand"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
