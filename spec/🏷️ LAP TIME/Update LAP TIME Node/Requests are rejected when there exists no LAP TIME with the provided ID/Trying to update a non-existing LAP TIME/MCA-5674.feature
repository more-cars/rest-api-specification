@REQ_MCA-5670
Feature: Update LAP TIME Node
  As an API contributor
  I want to be able to update a LAP TIME
  So I can add missing information or fix incorrect data

  @RULE_MCA-5673
  Rule: Requests are rejected when there exists no LAP TIME with the provided ID

    @TEST_MCA-5674 @implemented
    Scenario: Trying to update a non-existing LAP TIME
      Given "LAP TIME" "Fastest lap" does NOT exist
      When the user updates the node "Fastest lap"
      Then the request should be rejected with status code 404
