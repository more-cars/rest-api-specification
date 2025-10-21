@REQ_MCA-1124
Feature: Get TRACK LAYOUT-has-prime-image Relationship

  @RULE_MCA-1125
  Rule: The ›has-prime-image‹ relationship is returned when the provided data is valid

    @TEST_MCA-1126 @implemented
    Scenario: Requesting the ›has-prime-image‹ relationship when one exists
      Given there exists a "TRACK LAYOUT" "GP Circuit"
      And there exists a "has prime image" relationship "R" for "GP Circuit"
      When the user requests the "has prime image" relationship for "GP Circuit"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
