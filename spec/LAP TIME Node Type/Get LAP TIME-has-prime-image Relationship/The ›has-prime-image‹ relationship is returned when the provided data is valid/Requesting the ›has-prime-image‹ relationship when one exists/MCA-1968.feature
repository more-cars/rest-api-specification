@REQ_MCA-1966
Feature: Get LAP TIME-has-prime-image Relationship

  @RULE_MCA-1967
  Rule: The ›has-prime-image‹ relationship is returned when the provided data is valid

    @TEST_MCA-1968
    Scenario: Requesting the ›has-prime-image‹ relationship when one exists
      Given there exists a "LAP TIME" "fastest lap"
      And there exists a "has prime image" relationship "R" for "fastest lap"
      When the user requests the "has prime image" relationship for "fastest lap"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
