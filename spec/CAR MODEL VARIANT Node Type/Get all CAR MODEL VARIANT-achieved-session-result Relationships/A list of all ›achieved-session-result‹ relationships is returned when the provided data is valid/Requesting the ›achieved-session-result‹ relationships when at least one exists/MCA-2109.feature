@REQ_MCA-2107
Feature: Get all CAR MODEL VARIANT-achieved-session-result Relationships

  @RULE_MCA-2108
  Rule: A list of all ›achieved-session-result‹ relationships is returned when the provided data is valid

    @TEST_MCA-2109 @implemented
    Scenario: Requesting the ›achieved-session-result‹ relationships when at least one exists
      Given there exists a "CAR MODEL VARIANT" "BMW M3 GTR"
      And there exist 3 "achieved session result" relationships for "BMW M3 GTR"
      When the user requests all "achieved session result" relationships for "BMW M3 GTR"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "achieved session result" relationships
