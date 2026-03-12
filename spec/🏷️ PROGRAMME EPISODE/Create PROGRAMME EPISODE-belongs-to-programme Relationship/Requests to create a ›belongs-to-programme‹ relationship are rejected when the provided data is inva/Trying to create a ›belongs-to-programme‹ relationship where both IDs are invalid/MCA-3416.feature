@REQ_MCA-3410
Feature: Create PROGRAMME EPISODE-belongs-to-programme Relationship

  @RULE_MCA-3413
  Rule: Requests to create a ›belongs-to-programme‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3416 @implemented
    Scenario: Trying to create a ›belongs-to-programme‹ relationship where both IDs are invalid
      Given "PROGRAMME EPISODE" "The Holy Trinity" does NOT exist
      And "PROGRAMME" "The Grand Tour" does NOT exist
      When the user creates a "belongs to programme" relationship between "The Holy Trinity" and "The Grand Tour"
      Then the request should be rejected with status code 404
