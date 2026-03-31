@REQ_MCA-4709
Feature: Get GAMING PLATFORM-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a GAMING PLATFORM
  So I can instantly load the VIDEO that best represents the GAMING PLATFORM

  @RULE_MCA-4712
  Rule: An empty response is returned when there exists no ›has-main-video‹ relationship for the given GAMING PLATFORM

    @TEST_MCA-4713
    Scenario: Requesting the ›has-main-video‹ relationship when there exists none
      Given there exists a "GAMING PLATFORM" "Xbox"
      And there exists NO "has-main-video" relationship for "Xbox"
      When the user requests the "has-main-video" relationship for "Xbox"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
