@REQ_MCA-5706
Feature: Update GAMING PLATFORM Node
  As an API contributor
  I want to be able to update a GAMING PLATFORM
  So I can add missing information or fix incorrect data

  @RULE_MCA-5722
  Rule: Mandatory properties cannot be removed from a GAMING PLATFORM

    @TEST_MCA-5723 @implemented
    Scenario: Trying to delete a mandatory field while updating a GAMING PLATFORM.
      Given there exists a "GAMING PLATFORM" "PlayStation 5"
      When the user updates the node "PlayStation 5" with the following data
        | key  | value |
        | name |       |
      Then the request should be rejected with status code 400
