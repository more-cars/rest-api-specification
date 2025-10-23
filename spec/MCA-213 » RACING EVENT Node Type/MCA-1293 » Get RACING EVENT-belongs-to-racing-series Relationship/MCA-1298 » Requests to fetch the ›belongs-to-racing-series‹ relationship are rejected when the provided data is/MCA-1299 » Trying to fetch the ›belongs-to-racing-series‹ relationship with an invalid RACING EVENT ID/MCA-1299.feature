@REQ_MCA-1293
Feature: Get RACING EVENT-belongs-to-racing-series Relationship

  @RULE_MCA-1298
  Rule: Requests to fetch the ›belongs-to-racing-series‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1299 @implemented
    Scenario: Trying to fetch the ›belongs-to-racing-series‹ relationship with an invalid RACING EVENT ID
      Given "RACING EVENT" "Silverstone GP" does NOT exist
      When the user requests the "belongs to racing series" relationship for "Silverstone GP"
      Then the request should be rejected with status code 404
