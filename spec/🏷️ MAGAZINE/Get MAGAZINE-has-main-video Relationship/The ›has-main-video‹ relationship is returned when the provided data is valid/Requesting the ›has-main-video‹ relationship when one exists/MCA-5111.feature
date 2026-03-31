@REQ_MCA-5109
Feature: Get MAGAZINE-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a MAGAZINE
  So I can instantly load the VIDEO that best represents the MAGAZINE

  @RULE_MCA-5110
  Rule: The ›has-main-video‹ relationship is returned when the provided data is valid

    @TEST_MCA-5111
    Scenario: Requesting the ›has-main-video‹ relationship when one exists
      Given there exists a "MAGAZINE" "Top Gear"
      And there exists a "has-main-video" relationship "R" for "Top Gear"
      When the user requests the "has-main-video" relationship for "Top Gear"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
