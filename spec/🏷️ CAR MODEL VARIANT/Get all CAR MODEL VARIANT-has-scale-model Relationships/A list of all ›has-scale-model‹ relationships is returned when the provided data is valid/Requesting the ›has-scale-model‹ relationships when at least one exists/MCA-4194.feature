@REQ_MCA-4192
Feature: Get all CAR MODEL VARIANT-has-scale-model Relationships

  @RULE_MCA-4193
  Rule: A list of all ›has-scale-model‹ relationships is returned when the provided data is valid

    @TEST_MCA-4194 @implemented
    Scenario: Requesting the ›has-scale-model‹ relationships when at least one exists
      Given there exists a "CAR MODEL VARIANT" "BMW M3 CSL"
      And there exist 3 "has scale model" relationships for "BMW M3 CSL"
      When the user requests all "has scale model" relationships for "BMW M3 CSL"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has scale model" relationships
