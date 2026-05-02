@REQ_MCA-5399
Feature: Get all MAGAZINE ISSUE-documents-lap-time Relationships

  @RULE_MCA-5402
  Rule: An empty list is returned when there exist no ›documents-lap-time‹ relationships for the given MAGAZINE ISSUE

    @TEST_MCA-5403 @implemented
    Scenario: Requesting the ›documents-lap-time‹ relationships when there are none
      Given there exists a "MAGAZINE ISSUE" "Top Gear 11_2025"
      And there exist 0 "documents lap time" relationships for "Top Gear 11_2025"
      When the user requests all "documents lap time" relationships for "Top Gear 11_2025"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
