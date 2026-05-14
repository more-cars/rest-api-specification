@REQ_MCA-5580
Feature: Update TRACK LAYOUT Node
  As an API contributor
  I want to be able to update a TRACK LAYOUT
  So I can add missing information or fix incorrect data

  @RULE_MCA-5596
  Rule: Mandatory properties cannot be removed from a TRACK LAYOUT

    @TEST_MCA-5597 @implemented
    Scenario: Trying to delete a mandatory field while updating a TRACK LAYOUT.
      Given there exists a "TRACK LAYOUT" "Grand Prix Circuit"
      When the user updates the node "Grand Prix Circuit" with the following data
        | key  | value |
        | name |       |
      Then the request should be rejected with status code 400
