@REQ_MCA-3339
Feature: Delete PROGRAMME-has-episode Relationship
  As an API contributor
  I want to be able to disconnect PROGRAMME EPISODES from PROGRAMMES
  So I can clean up bad data or test data

  @RULE_MCA-3342
  Rule: Requests to delete the ›has-episode‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3345 @implemented
    Scenario: Trying to delete a ›has-episode‹ relationship where both IDs are invalid
      Given "PROGRAMME" "The Grand Tour" does NOT exist
      And "PROGRAMME EPISODE" "Top Gear Special" does NOT exist
      When the user deletes the "has episode" relationship between "The Grand Tour" and "Top Gear Special"
      Then the request should be rejected with status code 404
