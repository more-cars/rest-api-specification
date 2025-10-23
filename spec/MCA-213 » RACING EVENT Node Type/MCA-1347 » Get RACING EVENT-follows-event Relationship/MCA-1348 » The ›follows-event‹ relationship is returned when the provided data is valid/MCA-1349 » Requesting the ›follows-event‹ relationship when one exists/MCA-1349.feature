@REQ_MCA-1347
Feature: Get RACING EVENT-follows-event Relationship

  @RULE_MCA-1348
  Rule: The ›follows-event‹ relationship is returned when the provided data is valid

    @TEST_MCA-1349 @implemented
    Scenario: Requesting the ›follows-event‹ relationship when one exists
      Given there exists a "RACING EVENT" "GP Austria"
      And there exists a "follows event" relationship "R" for "GP Austria"
      When the user requests the "follows event" relationship for "GP Austria"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
