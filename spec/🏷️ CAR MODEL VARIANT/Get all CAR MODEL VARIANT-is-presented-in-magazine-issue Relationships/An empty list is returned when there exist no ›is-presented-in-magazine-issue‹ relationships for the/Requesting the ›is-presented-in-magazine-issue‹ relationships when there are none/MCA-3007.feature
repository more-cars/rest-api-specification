@REQ_MCA-3003
Feature: Get all CAR MODEL VARIANT-is-presented-in-magazine-issue Relationships

  @RULE_MCA-3006
  Rule: An empty list is returned when there exist no ›is-presented-in-magazine-issue‹ relationships for the given CAR MODEL VARIANT

    @TEST_MCA-3007 @implemented
    Scenario: Requesting the ›is-presented-in-magazine-issue‹ relationships when there are none
      Given there exists a "CAR MODEL VARIANT" "McLaren 750S"
      And there exist 0 "is presented in magazine issue" relationships for "McLaren 750S"
      When the user requests all "is presented in magazine issue" relationships for "McLaren 750S"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
