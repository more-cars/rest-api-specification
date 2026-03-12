@REQ_MCA-3339
Feature: Delete PROGRAMME-has-episode Relationship
  As an API contributor
  I want to be able to disconnect PROGRAMME EPISODES from PROGRAMMES
  So I can clean up bad data or test data

  @RULE_MCA-3340
  Rule: The ›has-episode‹ relationship is deleted when the provided data is valid

    @TEST_MCA-3341 @implemented
    Scenario: Deleting the ›has-episode‹ relationship when it actually exists
      Given there exists a "PROGRAMME" "The Grand Tour"
      And there exists a "PROGRAMME EPISODE" "Top Gear Special"
      And there exists a "has episode" relationship "R" between "The Grand Tour" and "Top Gear Special"
      When the user deletes the "has episode" relationship between "The Grand Tour" and "Top Gear Special"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
