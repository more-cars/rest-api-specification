@REQ_MCA-3529
Feature: Get PROGRAMME EPISODE-is-followed-by-episode Relationship

  @RULE_MCA-3534
  Rule: Requests to fetch the ›is-followed-by-episode‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3535
    Scenario: Trying to fetch the ›is-followed-by-episode‹ relationship with an invalid PROGRAMME EPISODE ID
      Given "PROGRAMME EPISODE" "The Holy Trinity" does NOT exist
      When the user requests the "is followed by episode" relationship for "The Holy Trinity"
      Then the request should be rejected with status code 404
