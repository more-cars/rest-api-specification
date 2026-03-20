@REQ_MCA-4192
Feature: Get all CAR MODEL VARIANT-has-scale-model Relationships

  @RULE_MCA-4195
  Rule: An empty list is returned when there exist no ›has-scale-model‹ relationships for the given CAR MODEL VARIANT

    @TEST_MCA-4196 @implemented
    Scenario: Requesting the ›has-scale-model‹ relationships when there are none
      Given there exists a "CAR MODEL VARIANT" "BMW M3 CSL"
      And there exist 0 "has scale model" relationships for "BMW M3 CSL"
      When the user requests all "has scale model" relationships for "BMW M3 CSL"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
