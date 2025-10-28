@REQ_MCA-2000
Feature: Delete LAP TIME-achieved-on-track-layout Relationship
  As an API contributor
  I want to be able to disconnect TRACK LAYOUTS from LAP TIMES
  So I can clean up bad data or test data

  @RULE_MCA-2001
  Rule: The ›achieved-on-track-layout‹ relationship is deleted when the provided data is valid

    @TEST_MCA-2002 @implemented
    Scenario: Deleting the ›achieved-on-track-layout‹ relationship when it actually exists
      Given there exists a "LAP TIME" "AVUS fastest lap"
      And there exists a "TRACK LAYOUT" "Norschleife"
      And there exists a "achieved on track layout" relationship "R" between "AVUS fastest lap" and "Norschleife"
      When the user deletes the "achieved on track layout" relationship between "AVUS fastest lap" and "Norschleife"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
