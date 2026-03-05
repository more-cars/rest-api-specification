@REQ_MCA-2895
Feature: Get all MAGAZINE ISSUE-covers-car-model Relationships

  @RULE_MCA-2900
  Rule: A request to fetch all ›covers-car-model‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-2901 @implemented
    Scenario: Trying to fetch the ›covers-car-model‹ relationships with an invalid MAGAZINE ISSUE ID
      Given "MAGAZINE ISSUE" "50 Jahre GTI" does NOT exist
      When the user requests all "covers car model" relationships for "50 Jahre GTI"
      Then the request should be rejected with status code 404
