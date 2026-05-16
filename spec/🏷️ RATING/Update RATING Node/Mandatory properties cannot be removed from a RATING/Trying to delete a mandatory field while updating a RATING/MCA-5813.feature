@REQ_MCA-5796
Feature: Update RATING Node
  As an API contributor
  I want to be able to update a RATING
  So I can add missing information or fix incorrect data

  @RULE_MCA-5812
  Rule: Mandatory properties cannot be removed from a RATING

    @TEST_MCA-5813 @implemented
    Scenario: Trying to delete a mandatory field while updating a RATING.
      Given there exists a "RATING" "93 Percent"
      When the user updates the node "93 Percent" with the following data
        | key             | value |
        | rating_value    |       |
        | scale_minimum   |       |
        | scale_maximum   |       |
        | scale_direction |       |
      Then the request should be rejected with status code 400
