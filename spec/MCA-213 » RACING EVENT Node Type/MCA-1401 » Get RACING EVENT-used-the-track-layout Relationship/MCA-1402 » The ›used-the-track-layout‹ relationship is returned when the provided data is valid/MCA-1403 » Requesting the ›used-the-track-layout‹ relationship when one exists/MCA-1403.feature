@REQ_MCA-1401
Feature: Get RACING EVENT-used-the-track-layout Relationship

  @RULE_MCA-1402
  Rule: The ›used-the-track-layout‹ relationship is returned when the provided data is valid

    @TEST_MCA-1403 @implemented
    Scenario: Requesting the ›used-the-track-layout‹ relationship when one exists
      Given there exists a "RACING EVENT" "GP Austria"
      And there exists a "used the track layout" relationship "R" for "GP Austria"
      When the user requests the "used the track layout" relationship for "GP Austria"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
