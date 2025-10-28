@REQ_MCA-1774
Feature: Get SESSION RESULT-belongs-to-racing-session Relationship

  @RULE_MCA-1779
  Rule: Requests to fetch the ›belongs-to-racing-session‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1780 @implemented
    Scenario: Trying to fetch the ›belongs-to-racing-session‹ relationship with an invalid SESSION RESULT ID
      Given "SESSION RESULT" "1st place" does NOT exist
      When the user requests the "belongs to racing session" relationship for "1st place"
      Then the request should be rejected with status code 404
