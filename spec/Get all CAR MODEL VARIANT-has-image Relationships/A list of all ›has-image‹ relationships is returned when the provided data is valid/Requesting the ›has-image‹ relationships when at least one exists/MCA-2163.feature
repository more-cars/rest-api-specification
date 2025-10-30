@REQ_MCA-2161
Feature: Get all CAR MODEL VARIANT-has-image Relationships

  @RULE_MCA-2162
  Rule: A list of all ›has-image‹ relationships is returned when the provided data is valid

    @TEST_MCA-2163 @implemented
    Scenario: Requesting the ›has-image‹ relationships when at least one exists
      Given there exists a "CAR MODEL VARIANT" "BMW M3"
      And there exist 3 "has image" relationships for "BMW M3"
      When the user requests all "has image" relationships for "BMW M3"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has image" relationships
