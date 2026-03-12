@REQ_MCA-3410
Feature: Create PROGRAMME EPISODE-belongs-to-programme Relationship

  @RULE_MCA-3413
  Rule: Requests to create a ›belongs-to-programme‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3414 @implemented
    Scenario: Trying to create a ›belongs-to-programme‹ relationship with invalid PROGRAMME EPISODE ID
      Given "PROGRAMME EPISODE" "The Holy Trinity" does NOT exist
      And there exists a "PROGRAMME" "The Grand Tour"
      When the user creates a "belongs to programme" relationship between "The Holy Trinity" and "The Grand Tour"
      Then the request should be rejected with status code 404
