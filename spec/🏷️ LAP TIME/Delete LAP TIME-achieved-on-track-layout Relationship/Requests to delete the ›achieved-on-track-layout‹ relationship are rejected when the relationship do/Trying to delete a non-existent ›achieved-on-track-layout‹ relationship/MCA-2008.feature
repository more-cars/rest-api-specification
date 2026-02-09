@REQ_MCA-2000
Feature: Delete LAP TIME-achieved-on-track-layout Relationship
  As an API contributor
  I want to be able to disconnect TRACK LAYOUTS from LAP TIMES
  So I can clean up bad data or test data

  @RULE_MCA-2007
  Rule: Requests to delete the ›achieved-on-track-layout‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-2008 @implemented
    Scenario: Trying to delete a non-existent ›achieved-on-track-layout‹ relationship
      Given there exists a "LAP TIME" "AVUS fastest lap"
      And there exists a "TRACK LAYOUT" "Norschleife"
      And there exists NO "achieved on track layout" relationship between "AVUS fastest lap" and "Norschleife"
      When the user deletes the "achieved on track layout" relationship between "AVUS fastest lap" and "Norschleife"
      Then the request should be rejected with status code 404
