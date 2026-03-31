@REQ_MCA-4601
Feature: Get TRACK LAYOUT-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a TRACK LAYOUT
  So I can instantly load the VIDEO that best represents the TRACK LAYOUT

  @RULE_MCA-4602
  Rule: The ›has-main-video‹ relationship is returned when the provided data is valid

    @TEST_MCA-4603
    Scenario: Requesting the ›has-main-video‹ relationship when one exists
      Given there exists a "TRACK LAYOUT" "Nordschleife"
      And there exists a "has-main-video" relationship "R" for "Nordschleife"
      When the user requests the "has-main-video" relationship for "Nordschleife"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
