@REQ_MCA-1632
Feature: Get all RACING SESSION-has-session-result Relationships

  @RULE_MCA-1635
  Rule: An empty list is returned when there exist no ›has-session-result‹ relationships for the given RACING SESSION

    @TEST_MCA-1636
    Scenario: Requesting the ›has-session-result‹ relationships when there are none
      Given there exists a "RACING SESSION" "Qualifying"
      And there exist 0 "has session result" relationships for "Qualifying"
      When the user requests all "has session result" relationships for "Qualifying"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
