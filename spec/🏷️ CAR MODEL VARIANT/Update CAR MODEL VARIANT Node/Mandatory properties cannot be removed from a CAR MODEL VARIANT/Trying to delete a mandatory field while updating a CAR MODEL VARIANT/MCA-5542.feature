@REQ_MCA-5525
Feature: Update CAR MODEL VARIANT Node
  As an API contributor
  I want to be able to update a CAR MODEL VARIANT
  So I can add missing information or fix incorrect data

  @RULE_MCA-5541
  Rule: Mandatory properties cannot be removed from a CAR MODEL VARIANT

    @TEST_MCA-5542 @implemented
    Scenario: Trying to delete a mandatory field while updating a CAR MODEL VARIANT.
      Given there exists a "CAR MODEL VARIANT" "BMW M3 CSL"
      When the user updates the node "BMW M3 CSL" with the following data
        | key  | value |
        | name |       |
      Then the request should be rejected with status code 400
