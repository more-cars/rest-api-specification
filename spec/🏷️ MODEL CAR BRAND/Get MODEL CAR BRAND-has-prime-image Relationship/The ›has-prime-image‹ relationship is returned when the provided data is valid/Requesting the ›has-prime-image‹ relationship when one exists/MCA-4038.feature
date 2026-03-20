@REQ_MCA-4036
Feature: Get MODEL CAR BRAND-has-prime-image Relationship

  @RULE_MCA-4037
  Rule: The ›has-prime-image‹ relationship is returned when the provided data is valid

    @TEST_MCA-4038 @implemented
    Scenario: Requesting the ›has-prime-image‹ relationship when one exists
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exists a "has prime image" relationship "R" for "Hot Wheels"
      When the user requests the "has prime image" relationship for "Hot Wheels"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
