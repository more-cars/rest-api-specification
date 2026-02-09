@REQ_MCA-1686
Feature: Get RACING SESSION-has-prime-image Relationship

  @RULE_MCA-1687
  Rule: The ›has-prime-image‹ relationship is returned when the provided data is valid

    @TEST_MCA-1688 @implemented
    Scenario: Requesting the ›has-prime-image‹ relationship when one exists
      Given there exists a "RACING SESSION" "Grand Prix"
      And there exists a "has prime image" relationship "R" for "Grand Prix"
      When the user requests the "has prime image" relationship for "Grand Prix"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
