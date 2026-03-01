@REQ_MCA-2782
Feature: Get all MAGAZINE ISSUE-has-image Relationships

  @RULE_MCA-2783
  Rule: A list of all ›has-image‹ relationships is returned when the provided data is valid

    @TEST_MCA-2784
    Scenario: Requesting the ›has-image‹ relationships when at least one exists
      Given there exists a "MAGAZINE ISSUE" "Sieger-Typen"
      And there exist 3 "has image" relationships for "Sieger-Typen"
      When the user requests all "has image" relationships for "Sieger-Typen"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has image" relationships
