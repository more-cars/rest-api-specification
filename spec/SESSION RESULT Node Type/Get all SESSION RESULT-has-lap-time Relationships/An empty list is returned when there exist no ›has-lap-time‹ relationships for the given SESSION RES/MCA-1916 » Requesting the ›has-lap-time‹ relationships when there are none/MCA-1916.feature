@REQ_MCA-1912
Feature: Get all SESSION RESULT-has-lap-time Relationships

  @RULE_MCA-1915
  Rule: An empty list is returned when there exist no ›has-lap-time‹ relationships for the given SESSION RESULT

    @TEST_MCA-1916
    Scenario: Requesting the ›has-lap-time‹ relationships when there are none
      Given there exists a "SESSION RESULT" "Grand Prix"
      And there exist 0 "has lap time" relationships for "Grand Prix"
      When the user requests all "has lap time" relationships for "Grand Prix"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
