@REQ_MCA-4134
Feature: Get PRICE-has-prime-image Relationship

  @RULE_MCA-4137
  Rule: An empty response is returned when there exists no ›has-prime-image‹ relationship for the given PRICE

    @TEST_MCA-4138 @implemented
    Scenario: Requesting the ›has-prime-image‹ relationship when there exists none
      Given there exists a "PRICE" "Brand New"
      And there exists NO "has prime image" relationship for "Brand New"
      When the user requests the "has prime image" relationship for "Brand New"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
