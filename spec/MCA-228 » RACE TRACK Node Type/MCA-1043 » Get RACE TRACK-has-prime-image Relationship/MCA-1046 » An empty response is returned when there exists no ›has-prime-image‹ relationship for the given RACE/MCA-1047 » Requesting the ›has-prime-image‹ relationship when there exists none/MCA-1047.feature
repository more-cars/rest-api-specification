@REQ_MCA-1043
Feature: Get RACE TRACK-has-prime-image Relationship

  @RULE_MCA-1046
  Rule: An empty response is returned when there exists no ›has-prime-image‹ relationship for the given RACE TRACK

    @TEST_MCA-1047 @implemented
    Scenario: Requesting the ›has-prime-image‹ relationship when there exists none
      Given there exists a "RACE TRACK" "Hockenheimring"
      And there exists NO "has prime image" relationship for "Hockenheimring"
      When the user requests the "has prime image" relationship for "Hockenheimring"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
