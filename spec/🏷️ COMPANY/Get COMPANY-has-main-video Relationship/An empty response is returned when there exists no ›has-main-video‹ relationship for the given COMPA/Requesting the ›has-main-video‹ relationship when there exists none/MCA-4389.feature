@REQ_MCA-4385
Feature: Get COMPANY-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a COMPANY
  So I can instantly load the VIDEO that best represents the COMPANY

  @RULE_MCA-4388
  Rule: An empty response is returned when there exists no ›has-main-video‹ relationship for the given COMPANY

    @TEST_MCA-4389 @implemented
    Scenario: Requesting the ›has-main-video‹ relationship when there exists none
      Given there exists a "COMPANY" "BMW AG"
      And there exists NO "has-main-video" relationship for "BMW AG"
      When the user requests the "has-main-video" relationship for "BMW AG"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
