@REQ_MCA-1993
Feature: Get LAP TIME-achieved-on-track-layout Relationship

  @RULE_MCA-1994
  Rule: The ›achieved-on-track-layout‹ relationship is returned when the provided data is valid

    @TEST_MCA-1995 @implemented
    Scenario: Requesting the ›achieved-on-track-layout‹ relationship when one exists
      Given there exists a "LAP TIME" "fastest lap"
      And there exists a "achieved on track layout" relationship "R" for "fastest lap"
      When the user requests the "achieved on track layout" relationship for "fastest lap"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
