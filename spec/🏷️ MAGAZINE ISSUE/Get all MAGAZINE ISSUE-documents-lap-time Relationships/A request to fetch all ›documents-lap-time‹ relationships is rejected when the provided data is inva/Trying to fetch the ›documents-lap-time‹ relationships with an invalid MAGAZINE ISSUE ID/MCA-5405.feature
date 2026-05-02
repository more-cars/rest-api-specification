@REQ_MCA-5399
Feature: Get all MAGAZINE ISSUE-documents-lap-time Relationships

  @RULE_MCA-5404
  Rule: A request to fetch all ›documents-lap-time‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-5405 @implemented
    Scenario: Trying to fetch the ›documents-lap-time‹ relationships with an invalid MAGAZINE ISSUE ID
      Given "MAGAZINE ISSUE" "Top Gear 11_2025" does NOT exist
      When the user requests all "documents lap time" relationships for "Top Gear 11_2025"
      Then the request should be rejected with status code 404
