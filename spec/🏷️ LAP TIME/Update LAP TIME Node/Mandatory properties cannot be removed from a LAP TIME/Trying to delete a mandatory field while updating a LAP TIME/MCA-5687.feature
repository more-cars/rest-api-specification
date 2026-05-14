@REQ_MCA-5670
Feature: Update LAP TIME Node
  As an API contributor
  I want to be able to update a LAP TIME
  So I can add missing information or fix incorrect data

  @RULE_MCA-5686
  Rule: Mandatory properties cannot be removed from a LAP TIME

    @TEST_MCA-5687 @implemented
    Scenario: Trying to delete a mandatory field while updating a LAP TIME.
      Given there exists a "LAP TIME" "Fastest lap"
      When the user updates the node "Fastest lap" with the following data
        | key         | value |
        | time        |       |
        | driver_name |       |
      Then the request should be rejected with status code 400
