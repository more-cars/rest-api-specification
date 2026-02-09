@REQ_MCA-1249
Feature: Get RACING SERIES-has-prime-image Relationship

  @RULE_MCA-1250
  Rule: The ›has-prime-image‹ relationship is returned when the provided data is valid

    @TEST_MCA-1251 @implemented
    Scenario: Requesting the ›has-prime-image‹ relationship when one exists
      Given there exists a "RACING SERIES" "BTCC"
      And there exists a "has prime image" relationship "R" for "BTCC"
      When the user requests the "has prime image" relationship for "BTCC"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
