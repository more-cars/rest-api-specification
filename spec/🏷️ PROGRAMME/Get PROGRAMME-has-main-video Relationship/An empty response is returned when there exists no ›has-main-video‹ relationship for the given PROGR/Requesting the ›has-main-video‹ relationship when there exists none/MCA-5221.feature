@REQ_MCA-5217
Feature: Get PROGRAMME-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a PROGRAMME
  So I can instantly load the VIDEO that best represents the PROGRAMME

  @RULE_MCA-5220
  Rule: An empty response is returned when there exists no ›has-main-video‹ relationship for the given PROGRAMME

    @TEST_MCA-5221
    Scenario: Requesting the ›has-main-video‹ relationship when there exists none
      Given there exists a "PROGRAMME" "The Grand Tour"
      And there exists NO "has-main-video" relationship for "The Grand Tour"
      When the user requests the "has-main-video" relationship for "The Grand Tour"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
