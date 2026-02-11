@REQ_MCA-2355
Feature: Create RACING GAME-features-track-layout Relationship

  @RULE_MCA-2362
  Rule: The same ›features-track-layout‹ relationship between the same nodes can only be created once

    @TEST_MCA-2363 @implemented
    Scenario: Trying to create the same ›features-track-layout‹ relationship again
      Given there exists a "RACING GAME" "Assetto Corsa EVO"
      And there exists a "TRACK LAYOUT" "Nordschleife"
      And there exists a "features track layout" relationship between "Assetto Corsa EVO" and "Nordschleife"
      When the user creates a "features track layout" relationship between "Assetto Corsa EVO" and "Nordschleife"
      Then the response should return with status code 304
