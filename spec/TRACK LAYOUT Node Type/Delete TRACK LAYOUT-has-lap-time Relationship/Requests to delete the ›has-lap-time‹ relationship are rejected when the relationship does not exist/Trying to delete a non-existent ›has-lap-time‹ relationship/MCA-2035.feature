@REQ_MCA-2027
Feature: Delete TRACK LAYOUT-has-lap-time Relationship
  As an API contributor
  I want to be able to disconnect LAP TIMES from TRACK LAYOUTS
  So I can clean up bad data or test data

  @RULE_MCA-2034
  Rule: Requests to delete the ›has-lap-time‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-2035 @implemented
    Scenario: Trying to delete a non-existent ›has-lap-time‹ relationship
      Given there exists a "TRACK LAYOUT" "Nordschleife"
      And there exists a "LAP TIME" "AVUS fastest lap"
      And there exists NO "has lap time" relationship between "Nordschleife" and "AVUS fastest lap"
      When the user deletes the "has lap time" relationship between "Nordschleife" and "AVUS fastest lap"
      Then the request should be rejected with status code 404
