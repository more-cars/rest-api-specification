@REQ_MCA-996
Feature: Delete RACE TRACK-has-layout Relationship
  As an API contributor
  I want to be able to disconnect TRACK LAYOUTS from RACE TRACKS
  So I can clean up bad data or test data

  @RULE_MCA-997
  Rule: The ›has-layout‹ relationship is deleted when the provided data is valid

    @TEST_MCA-998 @implemented
    Scenario: Deleting the ›has-layout‹ relationship when it actually exists
      Given there exists a "RACE TRACK" "Hockenheimring"
      And there exists a "TRACK LAYOUT" "GP Circuit"
      And there exists a "has layout" relationship "R" between "Hockenheimring" and "GP Circuit"
      When the user deletes the "has layout" relationship between "Hockenheimring" and "GP Circuit"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
