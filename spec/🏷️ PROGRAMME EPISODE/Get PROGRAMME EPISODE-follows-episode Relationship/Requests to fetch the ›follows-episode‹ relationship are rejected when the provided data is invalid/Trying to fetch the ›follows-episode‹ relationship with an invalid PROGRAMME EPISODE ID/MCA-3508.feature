@REQ_MCA-3502
Feature: Get PROGRAMME EPISODE-follows-episode Relationship

  @RULE_MCA-3507
  Rule: Requests to fetch the ›follows-episode‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3508 @implemented
    Scenario: Trying to fetch the ›follows-episode‹ relationship with an invalid PROGRAMME EPISODE ID
      Given "PROGRAMME EPISODE" "Funeral for a Ford" does NOT exist
      When the user requests the "follows episode" relationship for "Funeral for a Ford"
      Then the request should be rejected with status code 404
