@REQ_MCA-3518
Feature: Create PROGRAMME EPISODE-is-followed-by-episode Relationship

  @RULE_MCA-3521
  Rule: Requests to create a ›is-followed-by-episode‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3523 @implemented
    Scenario: Trying to create a ›is-followed-by-episode‹ relationship with invalid PROGRAMME EPISODE ID
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And "PROGRAMME EPISODE" "Operation Desert Stumble" does NOT exist
      When the user creates a "is followed by episode" relationship between "The Holy Trinity" and "Operation Desert Stumble"
      Then the request should be rejected with status code 404
