@REQ_MCA-2080
Feature: Get CAR MODEL VARIANT-is-variant-of Relationship

  @RULE_MCA-2081
  Rule: The ›is-variant-of‹ relationship is returned when the provided data is valid

    @TEST_MCA-2082 @implemented
    Scenario: Requesting the ›is-variant-of‹ relationship when one exists
      Given there exists a "CAR MODEL VARIANT" "BMW M3"
      And there exists a "is variant of" relationship "R" for "BMW M3"
      When the user requests the "is variant of" relationship for "BMW M3"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
