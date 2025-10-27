@REQ_MCA-1043
Feature: Get RACE TRACK-has-prime-image Relationship

  @RULE_MCA-1044
  Rule: The ›has-prime-image‹ relationship is returned when the provided data is valid

    @TEST_MCA-1045 @implemented
    Scenario: Requesting the ›has-prime-image‹ relationship when one exists
      Given there exists a "RACE TRACK" "Hockenheimring"
      And there exists a "has prime image" relationship "R" for "Hockenheimring"
      When the user requests the "has prime image" relationship for "Hockenheimring"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
