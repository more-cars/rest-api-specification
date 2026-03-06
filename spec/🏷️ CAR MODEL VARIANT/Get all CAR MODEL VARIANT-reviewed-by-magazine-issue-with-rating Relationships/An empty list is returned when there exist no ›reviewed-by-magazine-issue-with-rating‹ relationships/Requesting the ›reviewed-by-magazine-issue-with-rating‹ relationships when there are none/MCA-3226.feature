@REQ_MCA-3222
Feature: Get all CAR MODEL VARIANT-reviewed-by-magazine-issue-with-rating Relationships

  @RULE_MCA-3225
  Rule: An empty list is returned when there exist no ›reviewed-by-magazine-issue-with-rating‹ relationships for the given CAR MODEL VARIANT

    @TEST_MCA-3226 @implemented
    Scenario: Requesting the ›reviewed-by-magazine-issue-with-rating‹ relationships when there are none
      Given there exists a "CAR MODEL VARIANT" "McLaren 750S"
      And there exist 0 "reviewed by magazine issue with rating" relationships for "McLaren 750S"
      When the user requests all "reviewed by magazine issue with rating" relationships for "McLaren 750S"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
