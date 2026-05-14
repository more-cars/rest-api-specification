@REQ_MCA-5616
Feature: Update RACING EVENT Node
  As an API contributor
  I want to be able to update a RACING EVENT
  So I can add missing information or fix incorrect data

  @RULE_MCA-5632
  Rule: Mandatory properties cannot be removed from a RACING EVENT

    @TEST_MCA-5633 @implemented
    Scenario: Trying to delete a mandatory field while updating a RACING EVENT.
      Given there exists a "RACING EVENT" "GP Monaco"
      When the user updates the node "GP Monaco" with the following data
        | key  | value |
        | name |       |
      Then the request should be rejected with status code 400
