@REQ_MCA-2782
Feature: Get all MAGAZINE ISSUE-has-image Relationships

  @RULE_MCA-2785
  Rule: An empty list is returned when there exist no ›has-image‹ relationships for the given MAGAZINE ISSUE

    @TEST_MCA-2786
    Scenario: Requesting the ›has-image‹ relationships when there are none
      Given there exists a "MAGAZINE ISSUE" "Sieger-Typen"
      And there exist 0 "has image" relationships for "Sieger-Typen"
      When the user requests all "has image" relationships for "Sieger-Typen"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
