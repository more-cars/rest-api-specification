@REQ_MCA-2895
Feature: Get all MAGAZINE ISSUE-covers-car-model Relationships

  @RULE_MCA-2896
  Rule: A list of all ›covers-car-model‹ relationships is returned when the provided data is valid

    @TEST_MCA-2897
    Scenario: Requesting the ›covers-car-model‹ relationships when at least one exists
      Given there exists a "MAGAZINE ISSUE" "50 Jahre GTI"
      And there exist 3 "covers car model" relationships for "50 Jahre GTI"
      When the user requests all "covers car model" relationships for "50 Jahre GTI"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "covers car model" relationships
