@REQ_MCA-3684
Feature: Get MOTOR SHOW-has-prime-image Relationship

  @RULE_MCA-3685
  Rule: The ›has-prime-image‹ relationship is returned when the provided data is valid

    @TEST_MCA-3686 @implemented
    Scenario: Requesting the ›has-prime-image‹ relationship when one exists
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exists a "has prime image" relationship "R" for "IAA Frankfurt"
      When the user requests the "has prime image" relationship for "IAA Frankfurt"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
