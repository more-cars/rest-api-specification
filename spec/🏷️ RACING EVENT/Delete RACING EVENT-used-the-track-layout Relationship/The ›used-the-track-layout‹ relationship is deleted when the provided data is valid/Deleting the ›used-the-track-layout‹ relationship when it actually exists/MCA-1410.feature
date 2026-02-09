@REQ_MCA-1408
Feature: Delete RACING EVENT-used-the-track-layout Relationship
  As an API contributor
  I want to be able to disconnect TRACK LAYOUTS from RACING EVENTS
  So I can clean up bad data or test data

  @RULE_MCA-1409
  Rule: The ›used-the-track-layout‹ relationship is deleted when the provided data is valid

    @TEST_MCA-1410 @implemented
    Scenario: Deleting the ›used-the-track-layout‹ relationship when it actually exists
      Given there exists a "RACING EVENT" "GP Austria"
      And there exists a "TRACK LAYOUT" "Club Circuit"
      And there exists a "used the track layout" relationship "R" between "GP Austria" and "Club Circuit"
      When the user deletes the "used the track layout" relationship between "GP Austria" and "Club Circuit"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
