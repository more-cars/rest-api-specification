@REQ_MCA-5152
Feature: Create MAGAZINE ISSUE-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a MAGAZINE ISSUE
  So an API consumer can instantly load the VIDEO that best represents the MAGAZINE ISSUE

  @RULE_MCA-5155
  Rule: Requests to create a ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5157 @implemented
    Scenario: Trying to create a ›has-main-video‹ relationship with invalid VIDEO ID
      Given there exists a "MAGAZINE ISSUE" "Top Gear 03_2026"
      And "VIDEO" "Promo Video" does NOT exist
      When the user creates a "has-main-video" relationship between "Top Gear 03_2026" and "Promo Video"
      Then the request should be rejected with status code 404
