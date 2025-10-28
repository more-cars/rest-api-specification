@REQ_MCA-1605
Feature: Get RACING SESSION-belongs-to-racing-event Relationship

  @RULE_MCA-1606
  Rule: The ›belongs-to-racing-event‹ relationship is returned when the provided data is valid

    @TEST_MCA-1607 @implemented
    Scenario: Requesting the ›belongs-to-racing-event‹ relationship when one exists
      Given there exists a "RACING SESSION" "Qualifying"
      And there exists a "belongs to racing event" relationship "R" for "Qualifying"
      When the user requests the "belongs to racing event" relationship for "Qualifying"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
