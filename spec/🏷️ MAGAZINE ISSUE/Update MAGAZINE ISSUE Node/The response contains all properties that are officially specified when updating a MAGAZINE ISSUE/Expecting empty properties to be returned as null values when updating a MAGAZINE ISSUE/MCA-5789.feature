@REQ_MCA-5778
Feature: Update MAGAZINE ISSUE Node
  As an API contributor
  I want to be able to update a MAGAZINE ISSUE
  So I can add missing information or fix incorrect data

  @RULE_MCA-5787
  Rule: The response contains all properties that are officially specified when updating a MAGAZINE ISSUE

    @TEST_MCA-5789 @implemented
    Scenario: Expecting empty properties to be returned as null values when updating a MAGAZINE ISSUE
      Given there exists a "MAGAZINE ISSUE" "sport auto 2_2026"
      When the user updates the node "sport auto 2_2026" with the following data
        | key                    | value          |
        | title                  | Sieger-Typen_2 |
        | consecutive_number     |                |
        | issue_number           |                |
        | issue_year             |                |
        | release_date           |                |
        | single_copy_price      |                |
        | single_copy_price_unit |                |
        | pages                  |                |
      Then the response should contain the following properties
        | key                    | value          |
        | title                  | Sieger-Typen_2 |
        | consecutive_number     |                |
        | issue_number           |                |
        | issue_year             |                |
        | release_date           |                |
        | single_copy_price      |                |
        | single_copy_price_unit |                |
        | pages                  |                |
