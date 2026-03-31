@REQ_MCA-5109
Feature: Get MAGAZINE-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a MAGAZINE
  So I can instantly load the VIDEO that best represents the MAGAZINE

  @RULE_MCA-5112
  Rule: An empty response is returned when there exists no ›has-main-video‹ relationship for the given MAGAZINE

    @TEST_MCA-5113
    Scenario: Requesting the ›has-main-video‹ relationship when there exists none
      Given there exists a "MAGAZINE" "Top Gear"
      And there exists NO "has-main-video" relationship for "Top Gear"
      When the user requests the "has-main-video" relationship for "Top Gear"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
