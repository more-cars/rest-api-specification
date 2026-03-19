@REQ_MCA-4080
Feature: Get PRICE-for-car-model-variant Relationship

  @RULE_MCA-4083
  Rule: An empty response is returned when there exists no ›for-car-model-variant‹ relationship for the given PRICE

    @TEST_MCA-4084
    Scenario: Requesting the ›for-car-model-variant‹ relationship when there exists none
      Given there exists a "PRICE" "Brand New"
      And there exists NO "for car model variant" relationship for "Brand New"
      When the user requests the "for car model variant" relationship for "Brand New"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
