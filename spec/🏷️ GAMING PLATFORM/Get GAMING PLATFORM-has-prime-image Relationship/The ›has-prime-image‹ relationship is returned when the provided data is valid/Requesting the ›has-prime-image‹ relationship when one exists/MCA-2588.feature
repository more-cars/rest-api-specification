@REQ_MCA-2586
Feature: Get GAMING PLATFORM-has-prime-image Relationship

  @RULE_MCA-2587
  Rule: The ›has-prime-image‹ relationship is returned when the provided data is valid

    @TEST_MCA-2588 @implemented
    Scenario: Requesting the ›has-prime-image‹ relationship when one exists
      Given there exists a "GAMING PLATFORM" "PlayStation 5"
      And there exists a "has prime image" relationship "R" for "PlayStation 5"
      When the user requests the "has prime image" relationship for "PlayStation 5"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
