@REQ_MCA-2027
Feature: Delete TRACK LAYOUT-has-lap-time Relationship
  As an API contributor
  I want to be able to disconnect LAP TIMES from TRACK LAYOUTS
  So I can clean up bad data or test data

  @RULE_MCA-2028
  Rule: The ›has-lap-time‹ relationship is deleted when the provided data is valid

    @TEST_MCA-2029 @implemented
    Scenario: Deleting the ›has-lap-time‹ relationship when it actually exists
      Given there exists a "TRACK LAYOUT" "Nordschleife"
      And there exists a "LAP TIME" "AVUS fastest lap"
      And there exists a "has lap time" relationship "R" between "Nordschleife" and "AVUS fastest lap"
      When the user deletes the "has lap time" relationship between "Nordschleife" and "AVUS fastest lap"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
