@REQ_MCA-3711
Feature: Get all CAR MODEL VARIANT-presented-at-motor-show Relationships

  @RULE_MCA-3712
  Rule: A list of all ›presented-at-motor-show‹ relationships is returned when the provided data is valid

    @TEST_MCA-3713
    Scenario: Requesting the ›presented-at-motor-show‹ relationships when at least one exists
      Given there exists a "CAR MODEL VARIANT" "BMW i8"
      And there exist 3 "presented at motor show" relationships for "BMW i8"
      When the user requests all "presented at motor show" relationships for "BMW i8"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "presented at motor show" relationships
