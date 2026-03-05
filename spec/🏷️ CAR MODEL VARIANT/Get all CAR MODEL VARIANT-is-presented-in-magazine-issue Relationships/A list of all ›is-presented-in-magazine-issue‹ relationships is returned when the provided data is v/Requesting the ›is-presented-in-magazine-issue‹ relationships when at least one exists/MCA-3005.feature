@REQ_MCA-3003
Feature: Get all CAR MODEL VARIANT-is-presented-in-magazine-issue Relationships

  @RULE_MCA-3004
  Rule: A list of all ›is-presented-in-magazine-issue‹ relationships is returned when the provided data is valid

    @TEST_MCA-3005 @implemented
    Scenario: Requesting the ›is-presented-in-magazine-issue‹ relationships when at least one exists
      Given there exists a "CAR MODEL VARIANT" "McLaren 750S"
      And there exist 3 "is presented in magazine issue" relationships for "McLaren 750S"
      When the user requests all "is presented in magazine issue" relationships for "McLaren 750S"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "is presented in magazine issue" relationships
