@REQ_MCA-1300
Feature: Delete RACING EVENT-belongs-to-racing-series Relationship
  As an API contributor
  I want to be able to disconnect RACING SERIES from RACING EVENTS
  So I can clean up bad data or test data

  @RULE_MCA-1301
  Rule: The ›belongs-to-racing-series‹ relationship is deleted when the provided data is valid

    @TEST_MCA-1302 @implemented
    Scenario: Deleting the ›belongs-to-racing-series‹ relationship when it actually exists
      Given there exists a "RACING EVENT" "DTM Norisring"
      And there exists a "RACING SERIES" "Formula 1"
      And there exists a "belongs to racing series" relationship "R" between "DTM Norisring" and "Formula 1"
      When the user deletes the "belongs to racing series" relationship between "DTM Norisring" and "Formula 1"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
