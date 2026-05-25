@REQ_MCA-6099
Feature: Get all CAR MODEL VARIANT-is-covered-by-book Relationships

  @RULE_MCA-6102
  Rule: An empty list is returned when there exist no ›is-covered-by-book‹ relationships for the given CAR MODEL VARIANT

    @TEST_MCA-6103 @implemented
    Scenario: Requesting the ›is-covered-by-book‹ relationships when there are none
      Given there exists a "CAR MODEL VARIANT" "Ferrari SF-25"
      And there exist 0 "is covered by book" relationships for "Ferrari SF-25"
      When the user requests all "is covered by book" relationships for "Ferrari SF-25"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
