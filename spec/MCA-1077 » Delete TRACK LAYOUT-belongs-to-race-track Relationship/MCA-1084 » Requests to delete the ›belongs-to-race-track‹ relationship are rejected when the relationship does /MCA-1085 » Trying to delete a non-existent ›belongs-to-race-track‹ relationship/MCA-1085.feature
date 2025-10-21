@REQ_MCA-1077
Feature: Delete TRACK LAYOUT-belongs-to-race-track Relationship
  As an API contributor
  I want to be able to disconnect RACE TRACKS from TRACK LAYOUTS
  So I can clean up bad data or test data

  @RULE_MCA-1084
  Rule: Requests to delete the ›belongs-to-race-track‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-1085 @implemented
    Scenario: Trying to delete a non-existent ›belongs-to-race-track‹ relationship
      Given there exists a "TRACK LAYOUT" "Nordschleife"
      And there exists a "RACE TRACK" "Silverstone"
      And there exists NO "belongs to race track" relationship between "Nordschleife" and "Silverstone"
      When the user deletes the "belongs to race track" relationship between "Nordschleife" and "Silverstone"
      Then the request should be rejected with status code 404
