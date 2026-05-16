@REQ_MCA-5778
Feature: Update MAGAZINE ISSUE Node
  As an API contributor
  I want to be able to update a MAGAZINE ISSUE
  So I can add missing information or fix incorrect data

  @RULE_MCA-5785
  Rule: Requests to update a MAGAZINE ISSUE are rejected when the provided data is invalid

    @TEST_MCA-5786 @implemented
    Scenario: Trying to update a MAGAZINE ISSUE with invalid data types
      Given there exists a "MAGAZINE ISSUE" "sport auto 2_2026"
      When the user updates the node "sport auto 2_2026" with the following data
        | key                    | value |
        | title                  | 1234  |
        | consecutive_number     | TEST  |
        | issue_number           | TEST  |
        | issue_year             | TEST  |
        | release_date           | 1234  |
        | single_copy_price      | TEST  |
        | single_copy_price_unit | 1234  |
        | pages                  | TEST  |
      Then the request should be rejected with status code 400
