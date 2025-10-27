@REQ_MCA-1320
Feature: Get RACING EVENT-is-followed-by-event Relationship

  @RULE_MCA-1321
  Rule: The ›is-followed-by-event‹ relationship is returned when the provided data is valid

    @TEST_MCA-1322 @implemented
    Scenario: Requesting the ›is-followed-by-event‹ relationship when one exists
      Given there exists a "RACING EVENT" "GP Monaco"
      And there exists a "is followed by event" relationship "R" for "GP Monaco"
      When the user requests the "is followed by event" relationship for "GP Monaco"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
