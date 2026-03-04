@REQ_MCA-2895
Feature: Get all MAGAZINE ISSUE-covers-car-model Relationships

  @RULE_MCA-2898
  Rule: An empty list is returned when there exist no ›covers-car-model‹ relationships for the given MAGAZINE ISSUE

    @TEST_MCA-2899
    Scenario: Requesting the ›covers-car-model‹ relationships when there are none
      Given there exists a "MAGAZINE ISSUE" "50 Jahre GTI"
      And there exist 0 "covers car model" relationships for "50 Jahre GTI"
      When the user requests all "covers car model" relationships for "50 Jahre GTI"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
