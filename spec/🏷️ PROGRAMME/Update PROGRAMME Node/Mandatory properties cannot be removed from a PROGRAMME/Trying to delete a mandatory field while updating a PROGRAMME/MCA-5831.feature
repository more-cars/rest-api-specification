@REQ_MCA-5814
Feature: Update PROGRAMME Node
  As an API contributor
  I want to be able to update a PROGRAMME
  So I can add missing information or fix incorrect data

  @RULE_MCA-5830
  Rule: Mandatory properties cannot be removed from a PROGRAMME

    @TEST_MCA-5831 @implemented
    Scenario: Trying to delete a mandatory field while updating a PROGRAMME.
      Given there exists a "PROGRAMME" "The Grand Tour"
      When the user updates the node "The Grand Tour" with the following data
        | key  | value |
        | name |       |
      Then the request should be rejected with status code 400
