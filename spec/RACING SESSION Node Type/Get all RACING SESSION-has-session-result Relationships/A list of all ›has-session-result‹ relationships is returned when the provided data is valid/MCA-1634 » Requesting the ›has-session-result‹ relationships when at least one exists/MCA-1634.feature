@REQ_MCA-1632
Feature: Get all RACING SESSION-has-session-result Relationships

  @RULE_MCA-1633
  Rule: A list of all ›has-session-result‹ relationships is returned when the provided data is valid

    @TEST_MCA-1634
    Scenario: Requesting the ›has-session-result‹ relationships when at least one exists
      Given there exists a "RACING SESSION" "Qualifying"
      And there exist 3 "has session result" relationships for "Qualifying"
      When the user requests all "has session result" relationships for "Qualifying"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has session result" relationships
