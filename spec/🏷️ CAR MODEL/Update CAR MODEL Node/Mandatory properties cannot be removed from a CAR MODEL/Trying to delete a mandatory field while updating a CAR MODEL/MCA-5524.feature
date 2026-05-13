@REQ_MCA-5507
Feature: Update CAR MODEL Node
  As an API contributor
  I want to be able to update a CAR MODEL
  So I can add missing information or fix incorrect data

  @RULE_MCA-5523
  Rule: Mandatory properties cannot be removed from a CAR MODEL

    @TEST_MCA-5524 @implemented
    Scenario: Trying to delete a mandatory field while updating a CAR MODEL.
      Given there exists a "CAR MODEL" "Corolla"
      When the user updates the node "Corolla" with the following data
        | key  | value |
        | name |       |
      Then the request should be rejected with status code 400
