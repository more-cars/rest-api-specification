@REQ_MCA-5832
Feature: Update PROGRAMME EPISODE Node
  As an API contributor
  I want to be able to update a PROGRAMME EPISODE
  So I can add missing information or fix incorrect data

  @RULE_MCA-5833
  Rule: Requests to update a PROGRAMME EPISODE are accepted when the provided data is valid

    @TEST_MCA-5834 @implemented
    Scenario: Updating a PROGRAMME EPISODE with valid data
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      When the user updates the node "The Holy Trinity" with the following data
        | key                   | value            |
        | title                 | The Falls Guys_2 |
        | season_number         | 4                |
        | season_episode_number | 4                |
        | original_air_date     | 2017-12-08_2     |
        | duration              | PT55M_2          |
      Then the request should be confirmed with status code 200
