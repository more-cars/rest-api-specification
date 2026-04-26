@REQ_MCA-5399
Feature: Get all MAGAZINE ISSUE-documents-lap-time Relationships

  @RULE_MCA-5400
  Rule: A list of all ›documents-lap-time‹ relationships is returned when the provided data is valid

    @TEST_MCA-5401
    Scenario: Requesting the ›documents-lap-time‹ relationships when at least one exists
      Given there exists a "MAGAZINE ISSUE" "Top Gear 11_2025"
      And there exist 3 "documents lap time" relationships for "Top Gear 11_2025"
      When the user requests all "documents lap time" relationships for "Top Gear 11_2025"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "documents lap time" relationships
