@REQ_MCA-4134
Feature: Get PRICE-has-prime-image Relationship

  @RULE_MCA-4135
  Rule: The ›has-prime-image‹ relationship is returned when the provided data is valid

    @TEST_MCA-4136
    Scenario: Requesting the ›has-prime-image‹ relationship when one exists
      Given there exists a "PRICE" "Brand New"
      And there exists a "has prime image" relationship "R" for "Brand New"
      When the user requests the "has prime image" relationship for "Brand New"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
