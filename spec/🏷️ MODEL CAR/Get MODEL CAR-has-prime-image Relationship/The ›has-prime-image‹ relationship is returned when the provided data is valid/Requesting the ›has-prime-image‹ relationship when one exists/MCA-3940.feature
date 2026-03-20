@REQ_MCA-3938
Feature: Get MODEL CAR-has-prime-image Relationship

  @RULE_MCA-3939
  Rule: The ›has-prime-image‹ relationship is returned when the provided data is valid

    @TEST_MCA-3940 @implemented
    Scenario: Requesting the ›has-prime-image‹ relationship when one exists
      Given there exists a "MODEL CAR" "F40 Scale Model"
      And there exists a "has prime image" relationship "R" for "F40 Scale Model"
      When the user requests the "has prime image" relationship for "F40 Scale Model"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
