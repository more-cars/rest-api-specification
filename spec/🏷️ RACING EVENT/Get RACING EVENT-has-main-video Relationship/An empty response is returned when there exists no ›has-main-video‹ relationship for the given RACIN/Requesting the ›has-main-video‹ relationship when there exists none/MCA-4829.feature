@REQ_MCA-4825
Feature: Get RACING EVENT-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a RACING EVENT
  So I can instantly load the VIDEO that best represents the RACING EVENT

  @RULE_MCA-4828
  Rule: An empty response is returned when there exists no ›has-main-video‹ relationship for the given RACING EVENT

    @TEST_MCA-4829 @implemented
    Scenario: Requesting the ›has-main-video‹ relationship when there exists none
      Given there exists a "RACING EVENT" "F1 GP Monaco"
      And there exists NO "has-main-video" relationship for "F1 GP Monaco"
      When the user requests the "has-main-video" relationship for "F1 GP Monaco"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
