@REQ_MCA-5832
Feature: Update PROGRAMME EPISODE Node
  As an API contributor
  I want to be able to update a PROGRAMME EPISODE
  So I can add missing information or fix incorrect data

  @RULE_MCA-5839
  Rule: Requests to update a PROGRAMME EPISODE are rejected when the provided data is invalid

    @TEST_MCA-5840 @implemented
    Scenario: Trying to update a PROGRAMME EPISODE with invalid data types
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      When the user updates the node "The Holy Trinity" with the following data
        | key                   | value |
        | title                 | 1234  |
        | season_number         | TEST  |
        | season_episode_number | TEST  |
        | original_air_date     | 1234  |
        | duration              | 1234  |
      Then the request should be rejected with status code 400
