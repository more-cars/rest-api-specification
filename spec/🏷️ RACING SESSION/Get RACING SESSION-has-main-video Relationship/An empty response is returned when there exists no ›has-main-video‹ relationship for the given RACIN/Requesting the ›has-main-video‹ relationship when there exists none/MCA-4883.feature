@REQ_MCA-4879
Feature: Get RACING SESSION-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a RACING SESSION
  So I can instantly load the VIDEO that best represents the RACING SESSION

  @RULE_MCA-4882
  Rule: An empty response is returned when there exists no ›has-main-video‹ relationship for the given RACING SESSION

    @TEST_MCA-4883 @implemented
    Scenario: Requesting the ›has-main-video‹ relationship when there exists none
      Given there exists a "RACING SESSION" "Qualifying"
      And there exists NO "has-main-video" relationship for "Qualifying"
      When the user requests the "has-main-video" relationship for "Qualifying"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
