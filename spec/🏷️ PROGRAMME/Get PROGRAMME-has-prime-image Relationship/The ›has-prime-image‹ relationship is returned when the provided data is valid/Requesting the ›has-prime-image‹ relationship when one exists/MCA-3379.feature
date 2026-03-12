@REQ_MCA-3377
Feature: Get PROGRAMME-has-prime-image Relationship

  @RULE_MCA-3378
  Rule: The ›has-prime-image‹ relationship is returned when the provided data is valid

    @TEST_MCA-3379 @implemented
    Scenario: Requesting the ›has-prime-image‹ relationship when one exists
      Given there exists a "PROGRAMME" "The Grand Tour"
      And there exists a "has prime image" relationship "R" for "The Grand Tour"
      When the user requests the "has prime image" relationship for "The Grand Tour"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
