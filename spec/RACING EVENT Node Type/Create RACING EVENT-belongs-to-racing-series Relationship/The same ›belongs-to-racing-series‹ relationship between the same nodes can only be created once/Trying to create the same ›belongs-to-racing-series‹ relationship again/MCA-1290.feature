@REQ_MCA-1282
Feature: Create RACING EVENT-belongs-to-racing-series Relationship

  @RULE_MCA-1289
  Rule: The same ›belongs-to-racing-series‹ relationship between the same nodes can only be created once

    @TEST_MCA-1290 @implemented
    Scenario: Trying to create the same ›belongs-to-racing-series‹ relationship again
      Given there exists a "RACING EVENT" "Silverstone GP"
      And there exists a "RACING SERIES" "Formula 1"
      And there exists a "belongs to racing series" relationship between "Silverstone GP" and "Formula 1"
      When the user creates a "belongs to racing series" relationship between "Silverstone GP" and "Formula 1"
      Then the response should return with status code 304
