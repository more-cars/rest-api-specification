@REQ_MCA-5325
Feature: Get MOTOR SHOW-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a MOTOR SHOW
  So I can instantly load the VIDEO that best represents the MOTOR SHOW

  @RULE_MCA-5328
  Rule: An empty response is returned when there exists no ›has-main-video‹ relationship for the given MOTOR SHOW

    @TEST_MCA-5329
    Scenario: Requesting the ›has-main-video‹ relationship when there exists none
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exists NO "has-main-video" relationship for "IAA Frankfurt"
      When the user requests the "has-main-video" relationship for "IAA Frankfurt"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
