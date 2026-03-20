@REQ_MCA-4165
Feature: Get all CAR MODEL VARIANT-has-price Relationships

  @RULE_MCA-4168
  Rule: An empty list is returned when there exist no ›has-price‹ relationships for the given CAR MODEL VARIANT

    @TEST_MCA-4169 @implemented
    Scenario: Requesting the ›has-price‹ relationships when there are none
      Given there exists a "CAR MODEL VARIANT" "BMW M3"
      And there exist 0 "has price" relationships for "BMW M3"
      When the user requests all "has price" relationships for "BMW M3"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
