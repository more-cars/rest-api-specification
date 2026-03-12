@REQ_MCA-3711
Feature: Get all CAR MODEL VARIANT-presented-at-motor-show Relationships

  @RULE_MCA-3714
  Rule: An empty list is returned when there exist no ›presented-at-motor-show‹ relationships for the given CAR MODEL VARIANT

    @TEST_MCA-3715 @implemented
    Scenario: Requesting the ›presented-at-motor-show‹ relationships when there are none
      Given there exists a "CAR MODEL VARIANT" "BMW i8"
      And there exist 0 "presented at motor show" relationships for "BMW i8"
      When the user requests all "presented at motor show" relationships for "BMW i8"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
