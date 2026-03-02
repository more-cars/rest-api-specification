@REQ_MCA-2809
Feature: Get MAGAZINE ISSUE-has-prime-image Relationship

  @RULE_MCA-2810
  Rule: The ›has-prime-image‹ relationship is returned when the provided data is valid

    @TEST_MCA-2811 @implemented
    Scenario: Requesting the ›has-prime-image‹ relationship when one exists
      Given there exists a "MAGAZINE ISSUE" "Sieger-Typen"
      And there exists a "has prime image" relationship "R" for "Sieger-Typen"
      When the user requests the "has prime image" relationship for "Sieger-Typen"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
