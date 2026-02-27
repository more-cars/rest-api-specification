@REQ_MCA-2697
Feature: Get MAGAZINE-has-prime-image Relationship

  @RULE_MCA-2698
  Rule: The ›has-prime-image‹ relationship is returned when the provided data is valid

    @TEST_MCA-2699 @implemented
    Scenario: Requesting the ›has-prime-image‹ relationship when one exists
      Given there exists a "MAGAZINE" "Top Gear"
      And there exists a "has prime image" relationship "R" for "Top Gear"
      When the user requests the "has prime image" relationship for "Top Gear"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
