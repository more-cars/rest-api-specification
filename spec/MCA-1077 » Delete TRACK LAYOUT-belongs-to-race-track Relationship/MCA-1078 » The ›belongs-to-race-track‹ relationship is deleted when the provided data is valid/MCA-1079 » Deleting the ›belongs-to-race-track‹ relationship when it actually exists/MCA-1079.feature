@REQ_MCA-1077
Feature: Delete TRACK LAYOUT-belongs-to-race-track Relationship
  As an API contributor
  I want to be able to disconnect RACE TRACKS from TRACK LAYOUTS
  So I can clean up bad data or test data

  @RULE_MCA-1078
  Rule: The ›belongs-to-race-track‹ relationship is deleted when the provided data is valid

    @TEST_MCA-1079 @implemented
    Scenario: Deleting the ›belongs-to-race-track‹ relationship when it actually exists
      Given there exists a "TRACK LAYOUT" "Nordschleife"
      And there exists a "RACE TRACK" "Silverstone"
      And there exists a "belongs to race track" relationship "R" between "Nordschleife" and "Silverstone"
      When the user deletes the "belongs to race track" relationship between "Nordschleife" and "Silverstone"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
