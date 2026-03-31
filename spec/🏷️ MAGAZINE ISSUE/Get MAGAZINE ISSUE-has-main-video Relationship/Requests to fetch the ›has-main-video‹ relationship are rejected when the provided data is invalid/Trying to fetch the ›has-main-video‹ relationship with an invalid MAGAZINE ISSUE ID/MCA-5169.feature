@REQ_MCA-5163
Feature: Get MAGAZINE ISSUE-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a MAGAZINE ISSUE
  So I can instantly load the VIDEO that best represents the MAGAZINE ISSUE

  @RULE_MCA-5168
  Rule: Requests to fetch the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5169
    Scenario: Trying to fetch the ›has-main-video‹ relationship with an invalid MAGAZINE ISSUE ID
      Given "MAGAZINE ISSUE" "Top Gear 03_2026" does NOT exist
      When the user requests the "has-main-video" relationship for "Top Gear 03_2026"
      Then the request should be rejected with status code 404
