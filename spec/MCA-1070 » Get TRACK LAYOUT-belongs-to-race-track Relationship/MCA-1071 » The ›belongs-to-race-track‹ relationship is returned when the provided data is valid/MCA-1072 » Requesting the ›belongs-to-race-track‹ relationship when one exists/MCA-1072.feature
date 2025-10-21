@REQ_MCA-1070
Feature: Get TRACK LAYOUT-belongs-to-race-track Relationship

  @RULE_MCA-1071
  Rule: The ›belongs-to-race-track‹ relationship is returned when the provided data is valid

    @TEST_MCA-1072 @implemented
    Scenario: Requesting the ›belongs-to-race-track‹ relationship when one exists
      Given there exists a "TRACK LAYOUT" "Club Circuit"
      And there exists a "belongs to race track" relationship "R" for "Club Circuit"
      When the user requests the "belongs to race track" relationship for "Club Circuit"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
