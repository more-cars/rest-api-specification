@REQ_MCA-1713
Feature: Get all RACING EVENT-has-racing-session Relationships

  @RULE_MCA-1716
  Rule: An empty list is returned when there exist no ›has-racing-session‹ relationships for the given RACING EVENT

    @TEST_MCA-1717 @implemented
    Scenario: Requesting the ›has-racing-session‹ relationships when there are none
      Given there exists a "RACING EVENT" "GP Monaco"
      And there exist 0 "has racing session" relationships for "GP Monaco"
      When the user requests all "has racing session" relationships for "GP Monaco"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
