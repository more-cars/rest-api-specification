@REQ_MCA-2188
Feature: Get CAR MODEL VARIANT-has-prime-image Relationship

  @RULE_MCA-2189
  Rule: The ›has-prime-image‹ relationship is returned when the provided data is valid

    @TEST_MCA-2190 @implemented
    Scenario: Requesting the ›has-prime-image‹ relationship when one exists
      Given there exists a "CAR MODEL VARIANT" "BMW M3"
      And there exists a "has prime image" relationship "R" for "BMW M3"
      When the user requests the "has prime image" relationship for "BMW M3"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
