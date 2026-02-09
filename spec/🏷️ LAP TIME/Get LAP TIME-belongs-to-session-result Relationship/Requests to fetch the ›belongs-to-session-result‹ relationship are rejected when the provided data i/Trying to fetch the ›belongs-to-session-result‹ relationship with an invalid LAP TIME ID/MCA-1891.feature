@REQ_MCA-1885
Feature: Get LAP TIME-belongs-to-session-result Relationship

  @RULE_MCA-1890
  Rule: Requests to fetch the ›belongs-to-session-result‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1891 @implemented
    Scenario: Trying to fetch the ›belongs-to-session-result‹ relationship with an invalid LAP TIME ID
      Given "LAP TIME" "fastest lap" does NOT exist
      When the user requests the "belongs to session result" relationship for "fastest lap"
      Then the request should be rejected with status code 404
