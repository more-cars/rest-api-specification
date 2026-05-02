@REQ_MCA-5372
Feature: Get LAP TIME-documented-in-magazine-issue Relationship

  @RULE_MCA-5373
  Rule: The ›documented-in-magazine-issue‹ relationship is returned when the provided data is valid

    @TEST_MCA-5374 @implemented
    Scenario: Requesting the ›documented-in-magazine-issue‹ relationship when one exists
      Given there exists a "LAP TIME" "fastest lap"
      And there exists a "documented in magazine issue" relationship "R" for "fastest lap"
      When the user requests the "documented in magazine issue" relationship for "fastest lap"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
