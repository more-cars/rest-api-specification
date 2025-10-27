@REQ_MCA-861
Feature: Get CAR MODEL-has-successor Relationship

  @RULE_MCA-862
  Rule: The ›has-successor‹ relationship is returned when the provided data is valid

    @TEST_MCA-863 @implemented
    Scenario: Requesting the ›has-successor‹ relationship when one exists
      Given there exists a "CAR MODEL" "Diablo"
      And there exists a "has successor" relationship "R" for "Diablo"
      When the user requests the "has successor" relationship for "Diablo"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
