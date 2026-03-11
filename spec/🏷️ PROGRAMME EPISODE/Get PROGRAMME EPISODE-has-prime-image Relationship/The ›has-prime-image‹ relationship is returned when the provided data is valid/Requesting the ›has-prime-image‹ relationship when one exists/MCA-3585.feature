@REQ_MCA-3583
Feature: Get PROGRAMME EPISODE-has-prime-image Relationship

  @RULE_MCA-3584
  Rule: The ›has-prime-image‹ relationship is returned when the provided data is valid

    @TEST_MCA-3585
    Scenario: Requesting the ›has-prime-image‹ relationship when one exists
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "has prime image" relationship "R" for "The Holy Trinity"
      When the user requests the "has prime image" relationship for "The Holy Trinity"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
