@REQ_MCA-5814
Feature: Update PROGRAMME Node
  As an API contributor
  I want to be able to update a PROGRAMME
  So I can add missing information or fix incorrect data

  @RULE_MCA-5815
  Rule: Requests to update a PROGRAMME are accepted when the provided data is valid

    @TEST_MCA-5816 @implemented
    Scenario: Updating a PROGRAMME with valid data
      Given there exists a "PROGRAMME" "The Grand Tour"
      When the user updates the node "The Grand Tour" with the following data
        | key                          | value      |
        | name                         | Top Gear_2 |
        | aired_from_year              | 2004       |
        | aired_until_year             | 2024       |
        | channel                      | BBC Two_2  |
        | total_seasons                | 35         |
        | total_episodes               | 242        |
        | regular_episode_running_time | PT60M_2    |
        | country_code                 | GB_2       |
      Then the request should be confirmed with status code 201
