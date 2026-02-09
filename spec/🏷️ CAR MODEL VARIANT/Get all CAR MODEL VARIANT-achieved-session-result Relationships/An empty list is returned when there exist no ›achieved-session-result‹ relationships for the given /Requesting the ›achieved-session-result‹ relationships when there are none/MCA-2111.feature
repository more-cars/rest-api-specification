@REQ_MCA-2107
Feature: Get all CAR MODEL VARIANT-achieved-session-result Relationships

  @RULE_MCA-2110
  Rule: An empty list is returned when there exist no ›achieved-session-result‹ relationships for the given CAR MODEL VARIANT

    @TEST_MCA-2111 @implemented
    Scenario: Requesting the ›achieved-session-result‹ relationships when there are none
      Given there exists a "CAR MODEL VARIANT" "BMW M3 GTR"
      And there exist 0 "achieved session result" relationships for "BMW M3 GTR"
      When the user requests all "achieved session result" relationships for "BMW M3 GTR"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
