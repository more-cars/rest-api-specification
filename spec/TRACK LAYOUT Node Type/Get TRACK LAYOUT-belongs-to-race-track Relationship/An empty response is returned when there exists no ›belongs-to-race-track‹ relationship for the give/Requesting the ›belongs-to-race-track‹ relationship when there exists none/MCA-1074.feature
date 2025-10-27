@REQ_MCA-1070
Feature: Get TRACK LAYOUT-belongs-to-race-track Relationship

  @RULE_MCA-1073
  Rule: An empty response is returned when there exists no ›belongs-to-race-track‹ relationship for the given TRACK LAYOUT

    @TEST_MCA-1074 @implemented
    Scenario: Requesting the ›belongs-to-race-track‹ relationship when there exists none
      Given there exists a "TRACK LAYOUT" "Club Circuit"
      And there exists NO "belongs to race track" relationship for "Club Circuit"
      When the user requests the "belongs to race track" relationship for "Club Circuit"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
