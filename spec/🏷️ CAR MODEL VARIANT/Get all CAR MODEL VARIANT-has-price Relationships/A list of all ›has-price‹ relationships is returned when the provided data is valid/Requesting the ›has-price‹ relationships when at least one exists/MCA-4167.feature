@REQ_MCA-4165
Feature: Get all CAR MODEL VARIANT-has-price Relationships

  @RULE_MCA-4166
  Rule: A list of all ›has-price‹ relationships is returned when the provided data is valid

    @TEST_MCA-4167 @implemented
    Scenario: Requesting the ›has-price‹ relationships when at least one exists
      Given there exists a "CAR MODEL VARIANT" "BMW M3"
      And there exist 3 "has price" relationships for "BMW M3"
      When the user requests all "has price" relationships for "BMW M3"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has price" relationships
