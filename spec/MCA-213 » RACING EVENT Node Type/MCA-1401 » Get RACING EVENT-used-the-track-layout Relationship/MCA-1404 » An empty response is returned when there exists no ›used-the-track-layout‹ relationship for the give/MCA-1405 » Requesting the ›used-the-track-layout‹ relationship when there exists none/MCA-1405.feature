@REQ_MCA-1401
Feature: Get RACING EVENT-used-the-track-layout Relationship

  @RULE_MCA-1404
  Rule: An empty response is returned when there exists no ›used-the-track-layout‹ relationship for the given RACING EVENT

    @TEST_MCA-1405 @implemented
    Scenario: Requesting the ›used-the-track-layout‹ relationship when there exists none
      Given there exists a "RACING EVENT" "GP Austria"
      And there exists NO "used the track layout" relationship for "GP Austria"
      When the user requests the "used the track layout" relationship for "GP Austria"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
