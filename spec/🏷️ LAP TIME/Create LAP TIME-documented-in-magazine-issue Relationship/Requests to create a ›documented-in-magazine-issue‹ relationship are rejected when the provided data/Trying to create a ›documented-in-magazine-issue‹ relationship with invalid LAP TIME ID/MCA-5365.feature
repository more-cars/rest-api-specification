@REQ_MCA-5361
Feature: Create LAP TIME-documented-in-magazine-issue Relationship

  @RULE_MCA-5364
  Rule: Requests to create a ›documented-in-magazine-issue‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5365 @implemented
    Scenario: Trying to create a ›documented-in-magazine-issue‹ relationship with invalid LAP TIME ID
      Given "LAP TIME" "fastest lap" does NOT exist
      And there exists a "MAGAZINE ISSUE" "Top Gear 11_2025"
      When the user creates a "documented in magazine issue" relationship between "fastest lap" and "Top Gear 11_2025"
      Then the request should be rejected with status code 404
