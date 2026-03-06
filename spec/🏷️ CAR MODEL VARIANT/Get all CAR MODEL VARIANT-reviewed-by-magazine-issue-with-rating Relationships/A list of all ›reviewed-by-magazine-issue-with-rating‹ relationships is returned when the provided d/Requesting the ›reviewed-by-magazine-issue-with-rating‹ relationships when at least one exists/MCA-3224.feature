@REQ_MCA-3222
Feature: Get all CAR MODEL VARIANT-reviewed-by-magazine-issue-with-rating Relationships

  @RULE_MCA-3223
  Rule: A list of all ›reviewed-by-magazine-issue-with-rating‹ relationships is returned when the provided data is valid

    @TEST_MCA-3224 @implemented
    Scenario: Requesting the ›reviewed-by-magazine-issue-with-rating‹ relationships when at least one exists
      Given there exists a "CAR MODEL VARIANT" "McLaren 750S"
      And there exist 3 "reviewed by magazine issue with rating" relationships for "McLaren 750S"
      When the user requests all "reviewed by magazine issue with rating" relationships for "McLaren 750S"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "reviewed by magazine issue with rating" relationships
