@REQ_MCA-5832
Feature: Update PROGRAMME EPISODE Node
  As an API contributor
  I want to be able to update a PROGRAMME EPISODE
  So I can add missing information or fix incorrect data

  @RULE_MCA-5841
  Rule: The response contains all properties that are officially specified when updating a PROGRAMME EPISODE

    @TEST_MCA-5843 @implemented
    Scenario: Expecting empty properties to be returned as null values when updating a PROGRAMME EPISODE
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      When the user updates the node "The Holy Trinity" with the following data
        | key                   | value            |
        | title                 | The Falls Guys_2 |
        | season_number         |                  |
        | season_episode_number |                  |
        | original_air_date     |                  |
        | duration              |                  |
      Then the response should contain the following properties
        | key                   | value            |
        | title                 | The Falls Guys_2 |
        | season_number         |                  |
        | season_episode_number |                  |
        | original_air_date     |                  |
        | duration              |                  |
