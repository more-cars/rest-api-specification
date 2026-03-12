@REQ_MCA-3421
Feature: Get PROGRAMME EPISODE-belongs-to-programme Relationship

  @RULE_MCA-3426
  Rule: Requests to fetch the ›belongs-to-programme‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3427 @implemented
    Scenario: Trying to fetch the ›belongs-to-programme‹ relationship with an invalid PROGRAMME EPISODE ID
      Given "PROGRAMME EPISODE" "The Holy Trinity" does NOT exist
      When the user requests the "belongs to programme" relationship for "The Holy Trinity"
      Then the request should be rejected with status code 404
