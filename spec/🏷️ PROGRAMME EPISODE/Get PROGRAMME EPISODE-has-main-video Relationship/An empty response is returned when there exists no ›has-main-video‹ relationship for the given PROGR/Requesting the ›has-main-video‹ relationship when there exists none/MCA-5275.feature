@REQ_MCA-5271
Feature: Get PROGRAMME EPISODE-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a PROGRAMME EPISODE
  So I can instantly load the VIDEO that best represents the PROGRAMME EPISODE

  @RULE_MCA-5274
  Rule: An empty response is returned when there exists no ›has-main-video‹ relationship for the given PROGRAMME EPISODE

    @TEST_MCA-5275
    Scenario: Requesting the ›has-main-video‹ relationship when there exists none
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists NO "has-main-video" relationship for "The Holy Trinity"
      When the user requests the "has-main-video" relationship for "The Holy Trinity"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
