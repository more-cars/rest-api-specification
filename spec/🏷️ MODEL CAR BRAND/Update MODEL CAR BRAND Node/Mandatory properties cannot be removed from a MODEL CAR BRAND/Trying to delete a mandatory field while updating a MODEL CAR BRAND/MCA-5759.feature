@REQ_MCA-5742
Feature: Update MODEL CAR BRAND Node
  As an API contributor
  I want to be able to update a MODEL CAR BRAND
  So I can add missing information or fix incorrect data

  @RULE_MCA-5758
  Rule: Mandatory properties cannot be removed from a MODEL CAR BRAND

    @TEST_MCA-5759 @implemented
    Scenario: Trying to delete a mandatory field while updating a MODEL CAR BRAND.
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      When the user updates the node "Hot Wheels" with the following data
        | key  | value |
        | name |       |
      Then the request should be rejected with status code 400
