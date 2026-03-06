@REQ_MCA-3195
Feature: Get RATING-has-prime-image Relationship

  @RULE_MCA-3196
  Rule: The ›has-prime-image‹ relationship is returned when the provided data is valid

    @TEST_MCA-3197 @implemented
    Scenario: Requesting the ›has-prime-image‹ relationship when one exists
      Given there exists a "RATING" "93 Percent"
      And there exists a "has prime image" relationship "R" for "93 Percent"
      When the user requests the "has prime image" relationship for "93 Percent"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
