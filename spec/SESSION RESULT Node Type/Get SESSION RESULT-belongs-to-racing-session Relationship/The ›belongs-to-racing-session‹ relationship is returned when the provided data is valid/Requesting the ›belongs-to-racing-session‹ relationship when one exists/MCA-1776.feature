@REQ_MCA-1774
Feature: Get SESSION RESULT-belongs-to-racing-session Relationship

  @RULE_MCA-1775
  Rule: The ›belongs-to-racing-session‹ relationship is returned when the provided data is valid

    @TEST_MCA-1776 @implemented
    Scenario: Requesting the ›belongs-to-racing-session‹ relationship when one exists
      Given there exists a "SESSION RESULT" "1st place"
      And there exists a "belongs to racing session" relationship "R" for "1st place"
      When the user requests the "belongs to racing session" relationship for "1st place"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
