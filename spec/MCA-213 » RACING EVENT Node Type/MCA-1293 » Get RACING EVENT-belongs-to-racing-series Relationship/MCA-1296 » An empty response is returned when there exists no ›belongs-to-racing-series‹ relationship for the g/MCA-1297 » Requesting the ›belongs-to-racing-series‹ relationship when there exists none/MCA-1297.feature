@REQ_MCA-1293
Feature: Get RACING EVENT-belongs-to-racing-series Relationship

  @RULE_MCA-1296
  Rule: An empty response is returned when there exists no ›belongs-to-racing-series‹ relationship for the given RACING EVENT

    @TEST_MCA-1297 @implemented
    Scenario: Requesting the ›belongs-to-racing-series‹ relationship when there exists none
      Given there exists a "RACING EVENT" "Silverstone GP"
      And there exists NO "belongs to racing series" relationship for "Silverstone GP"
      When the user requests the "belongs to racing series" relationship for "Silverstone GP"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
