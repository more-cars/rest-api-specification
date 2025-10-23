@REQ_MCA-1293
Feature: Get RACING EVENT-belongs-to-racing-series Relationship

  @RULE_MCA-1294
  Rule: The ›belongs-to-racing-series‹ relationship is returned when the provided data is valid

    @TEST_MCA-1295 @implemented
    Scenario: Requesting the ›belongs-to-racing-series‹ relationship when one exists
      Given there exists a "RACING EVENT" "Silverstone GP"
      And there exists a "belongs to racing series" relationship "R" for "Silverstone GP"
      When the user requests the "belongs to racing series" relationship for "Silverstone GP"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
