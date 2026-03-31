@REQ_MCA-4601
Feature: Get TRACK LAYOUT-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a TRACK LAYOUT
  So I can instantly load the VIDEO that best represents the TRACK LAYOUT

  @RULE_MCA-4604
  Rule: An empty response is returned when there exists no ›has-main-video‹ relationship for the given TRACK LAYOUT

    @TEST_MCA-4605
    Scenario: Requesting the ›has-main-video‹ relationship when there exists none
      Given there exists a "TRACK LAYOUT" "Nordschleife"
      And there exists NO "has-main-video" relationship for "Nordschleife"
      When the user requests the "has-main-video" relationship for "Nordschleife"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
