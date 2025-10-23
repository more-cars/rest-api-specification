@REQ_MCA-1455
Feature: Get RACING EVENT-has-prime-image Relationship

  @RULE_MCA-1456
  Rule: The ›has-prime-image‹ relationship is returned when the provided data is valid

    @TEST_MCA-1457 @implemented
    Scenario: Requesting the ›has-prime-image‹ relationship when one exists
      Given there exists a "RACING EVENT" "GP Monaco"
      And there exists a "has prime image" relationship "R" for "GP Monaco"
      When the user requests the "has prime image" relationship for "GP Monaco"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
