@REQ_MCA-5439
Feature: Update BRAND Node
  As an API contributor
  I want to be able to update a BRAND
  So I can add missing information or fix incorrect data

  @RULE_MCA-5455
  Rule: Mandatory properties cannot be removed from a BRAND

    @TEST_MCA-5456
    Scenario: Trying to delete a mandatory field while updating a BRAND.
      Given there exists a "BRAND" "BMW"
      When the user updates the node "BMW" with the following data
        | key  | value |
        | name |       |
      Then the request should be rejected with status code 400
