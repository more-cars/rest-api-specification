@REQ_MCA-2161
Feature: Get all CAR MODEL VARIANT-has-image Relationships

  @RULE_MCA-2164
  Rule: An empty list is returned when there exist no ›has-image‹ relationships for the given CAR MODEL VARIANT

    @TEST_MCA-2165 @implemented
    Scenario: Requesting the ›has-image‹ relationships when there are none
      Given there exists a "CAR MODEL VARIANT" "BMW M3"
      And there exist 0 "has image" relationships for "BMW M3"
      When the user requests all "has image" relationships for "BMW M3"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
