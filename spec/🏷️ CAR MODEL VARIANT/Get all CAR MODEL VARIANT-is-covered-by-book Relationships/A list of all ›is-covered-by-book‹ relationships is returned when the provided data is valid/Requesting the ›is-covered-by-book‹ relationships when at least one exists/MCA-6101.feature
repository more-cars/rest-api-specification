@REQ_MCA-6099
Feature: Get all CAR MODEL VARIANT-is-covered-by-book Relationships

  @RULE_MCA-6100
  Rule: A list of all ›is-covered-by-book‹ relationships is returned when the provided data is valid

    @TEST_MCA-6101 @implemented
    Scenario: Requesting the ›is-covered-by-book‹ relationships when at least one exists
      Given there exists a "CAR MODEL VARIANT" "Ferrari SF-25"
      And there exist 3 "is covered by book" relationships for "Ferrari SF-25"
      When the user requests all "is covered by book" relationships for "Ferrari SF-25"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "is covered by book" relationships
