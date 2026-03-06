@REQ_MCA-3114
Feature: Get RATING-by-magazine-issue Relationship

  @RULE_MCA-3115
  Rule: The ›by-magazine-issue‹ relationship is returned when the provided data is valid

    @TEST_MCA-3116 @implemented
    Scenario: Requesting the ›by-magazine-issue‹ relationship when one exists
      Given there exists a "RATING" "93 Percent"
      And there exists a "by magazine issue" relationship "R" for "93 Percent"
      When the user requests the "by magazine issue" relationship for "93 Percent"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
