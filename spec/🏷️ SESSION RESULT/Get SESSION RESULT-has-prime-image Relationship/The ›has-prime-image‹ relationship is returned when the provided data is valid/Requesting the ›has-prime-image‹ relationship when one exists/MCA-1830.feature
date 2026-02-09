@REQ_MCA-1828
Feature: Get SESSION RESULT-has-prime-image Relationship

  @RULE_MCA-1829
  Rule: The ›has-prime-image‹ relationship is returned when the provided data is valid

    @TEST_MCA-1830 @implemented
    Scenario: Requesting the ›has-prime-image‹ relationship when one exists
      Given there exists a "SESSION RESULT" "1st place"
      And there exists a "has prime image" relationship "R" for "1st place"
      When the user requests the "has prime image" relationship for "1st place"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
