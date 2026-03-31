@REQ_MCA-4933
Feature: Get LAP TIME-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a LAP TIME
  So I can instantly load the VIDEO that best represents the LAP TIME

  @RULE_MCA-4936
  Rule: An empty response is returned when there exists no ›has-main-video‹ relationship for the given LAP TIME

    @TEST_MCA-4937
    Scenario: Requesting the ›has-main-video‹ relationship when there exists none
      Given there exists a "LAP TIME" "Fastest Lap"
      And there exists NO "has-main-video" relationship for "Fastest Lap"
      When the user requests the "has-main-video" relationship for "Fastest Lap"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
