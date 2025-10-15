@REQ_MCA-889
Feature: Get CAR MODEL-is-successor-of Relationship

  @RULE_MCA-890
  Rule: The ›is-successor-of‹ relationship is returned when the provided data is valid

    @TEST_MCA-891 @implemented
    Scenario: Requesting the ›is-successor-of‹ relationship when one exists
      Given there exists a "CAR MODEL" "Aventador"
      And there exists a "is successor of" relationship "R" for "Aventador"
      When the user requests the "is successor of" relationship for "Aventador"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
