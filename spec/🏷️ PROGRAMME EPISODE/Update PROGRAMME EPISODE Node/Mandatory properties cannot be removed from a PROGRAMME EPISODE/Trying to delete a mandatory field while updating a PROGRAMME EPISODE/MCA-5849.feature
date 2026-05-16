@REQ_MCA-5832
Feature: Update PROGRAMME EPISODE Node
  As an API contributor
  I want to be able to update a PROGRAMME EPISODE
  So I can add missing information or fix incorrect data

  @RULE_MCA-5848
  Rule: Mandatory properties cannot be removed from a PROGRAMME EPISODE

    @TEST_MCA-5849 @implemented
    Scenario: Trying to delete a mandatory field while updating a PROGRAMME EPISODE.
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      When the user updates the node "The Holy Trinity" with the following data
        | key   | value |
        | title |       |
      Then the request should be rejected with status code 400
