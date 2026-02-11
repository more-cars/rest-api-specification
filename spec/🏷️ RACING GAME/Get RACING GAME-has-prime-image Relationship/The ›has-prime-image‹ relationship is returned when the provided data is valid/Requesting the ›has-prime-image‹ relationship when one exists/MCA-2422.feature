@REQ_MCA-2420
Feature: Get RACING GAME-has-prime-image Relationship

  @RULE_MCA-2421
  Rule: The ›has-prime-image‹ relationship is returned when the provided data is valid

    @TEST_MCA-2422 @implemented
    Scenario: Requesting the ›has-prime-image‹ relationship when one exists
      Given there exists a "RACING GAME" "F1 2025"
      And there exists a "has prime image" relationship "R" for "F1 2025"
      When the user requests the "has prime image" relationship for "F1 2025"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
