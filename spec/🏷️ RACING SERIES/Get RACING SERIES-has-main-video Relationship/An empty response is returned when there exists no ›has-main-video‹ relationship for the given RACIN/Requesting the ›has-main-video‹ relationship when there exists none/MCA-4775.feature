@REQ_MCA-4771
Feature: Get RACING SERIES-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a RACING SERIES
  So I can instantly load the VIDEO that best represents the RACING SERIES

  @RULE_MCA-4774
  Rule: An empty response is returned when there exists no ›has-main-video‹ relationship for the given RACING SERIES

    @TEST_MCA-4775
    Scenario: Requesting the ›has-main-video‹ relationship when there exists none
      Given there exists a "RACING SERIES" "Formula 1"
      And there exists NO "has-main-video" relationship for "Formula 1"
      When the user requests the "has-main-video" relationship for "Formula 1"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
