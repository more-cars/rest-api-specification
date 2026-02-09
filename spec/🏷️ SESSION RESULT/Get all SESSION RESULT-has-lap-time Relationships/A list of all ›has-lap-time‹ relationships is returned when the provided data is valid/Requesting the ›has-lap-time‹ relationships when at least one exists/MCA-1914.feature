@REQ_MCA-1912
Feature: Get all SESSION RESULT-has-lap-time Relationships

  @RULE_MCA-1913
  Rule: A list of all ›has-lap-time‹ relationships is returned when the provided data is valid

    @TEST_MCA-1914 @implemented
    Scenario: Requesting the ›has-lap-time‹ relationships when at least one exists
      Given there exists a "SESSION RESULT" "Grand Prix"
      And there exist 3 "has lap time" relationships for "Grand Prix"
      When the user requests all "has lap time" relationships for "Grand Prix"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has lap time" relationships
