@REQ_MCA-2355
Feature: Create RACING GAME-features-track-layout Relationship

  @RULE_MCA-2358
  Rule: Requests to create a ›features-track-layout‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2359
    Scenario: Trying to create a ›features-track-layout‹ relationship with invalid RACING GAME ID
      Given "RACING GAME" "Assetto Corsa EVO" does NOT exist
      And there exists a "TRACK LAYOUT" "Nordschleife"
      When the user creates a "features track layout" relationship between "Assetto Corsa EVO" and "Nordschleife"
      Then the request should be rejected with status code 404
