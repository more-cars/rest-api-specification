@REQ_MCA-5163
Feature: Get MAGAZINE ISSUE-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a MAGAZINE ISSUE
  So I can instantly load the VIDEO that best represents the MAGAZINE ISSUE

  @RULE_MCA-5164
  Rule: The ›has-main-video‹ relationship is returned when the provided data is valid

    @TEST_MCA-5165
    Scenario: Requesting the ›has-main-video‹ relationship when one exists
      Given there exists a "MAGAZINE ISSUE" "Top Gear 03_2026"
      And there exists a "has-main-video" relationship "R" for "Top Gear 03_2026"
      When the user requests the "has-main-video" relationship for "Top Gear 03_2026"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
