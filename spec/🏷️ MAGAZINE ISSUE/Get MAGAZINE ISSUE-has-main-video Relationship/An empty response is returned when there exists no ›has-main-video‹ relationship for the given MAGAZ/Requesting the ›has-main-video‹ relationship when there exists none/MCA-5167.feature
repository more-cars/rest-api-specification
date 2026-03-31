@REQ_MCA-5163
Feature: Get MAGAZINE ISSUE-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a MAGAZINE ISSUE
  So I can instantly load the VIDEO that best represents the MAGAZINE ISSUE

  @RULE_MCA-5166
  Rule: An empty response is returned when there exists no ›has-main-video‹ relationship for the given MAGAZINE ISSUE

    @TEST_MCA-5167
    Scenario: Requesting the ›has-main-video‹ relationship when there exists none
      Given there exists a "MAGAZINE ISSUE" "Top Gear 03_2026"
      And there exists NO "has-main-video" relationship for "Top Gear 03_2026"
      When the user requests the "has-main-video" relationship for "Top Gear 03_2026"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
