@REQ_MCA-4547
Feature: Get RACE TRACK-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a RACE TRACK
  So I can instantly load the VIDEO that best represents the RACE TRACK

  @RULE_MCA-4550
  Rule: An empty response is returned when there exists no ›has-main-video‹ relationship for the given RACE TRACK

    @TEST_MCA-4551
    Scenario: Requesting the ›has-main-video‹ relationship when there exists none
      Given there exists a "RACE TRACK" "Nürburgring"
      And there exists NO "has-main-video" relationship for "Nürburgring"
      When the user requests the "has-main-video" relationship for "Nürburgring"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
