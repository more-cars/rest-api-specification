@REQ_MCA-3403
Feature: Hard Delete PROGRAMME EPISODE Node
  As an API contributor
  I want to be able to delete a PROGRAMME EPISODE
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-3406
  Rule: Requests are rejected when there exists no PROGRAMME EPISODE with the provided ID

    @TEST_MCA-3407
    Scenario: Trying to hard-delete a non-existing PROGRAMME EPISODE
      Given "PROGRAMME EPISODE" "Top Gear" does NOT exist
      When the user hard-deletes the "PROGRAMME EPISODE" "Top Gear"
      Then the request should be rejected with status code 404
