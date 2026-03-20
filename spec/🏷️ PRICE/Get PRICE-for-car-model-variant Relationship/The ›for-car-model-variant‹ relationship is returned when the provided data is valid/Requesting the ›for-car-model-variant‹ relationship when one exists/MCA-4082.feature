@REQ_MCA-4080
Feature: Get PRICE-for-car-model-variant Relationship

  @RULE_MCA-4081
  Rule: The ›for-car-model-variant‹ relationship is returned when the provided data is valid

    @TEST_MCA-4082 @implemented
    Scenario: Requesting the ›for-car-model-variant‹ relationship when one exists
      Given there exists a "PRICE" "Brand New"
      And there exists a "for car model variant" relationship "R" for "Brand New"
      When the user requests the "for car model variant" relationship for "Brand New"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
