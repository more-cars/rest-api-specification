@REQ_MCA-1713
Feature: Get all RACING EVENT-has-racing-session Relationships

  @RULE_MCA-1714
  Rule: A list of all ›has-racing-session‹ relationships is returned when the provided data is valid

    @TEST_MCA-1715 @implemented
    Scenario: Requesting the ›has-racing-session‹ relationships when at least one exists
      Given there exists a "RACING EVENT" "GP Monaco"
      And there exist 3 "has racing session" relationships for "GP Monaco"
      When the user requests all "has racing session" relationships for "GP Monaco"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has racing session" relationships
