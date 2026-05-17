@REQ_MCA-5778
Feature: Update MAGAZINE ISSUE Node
  As an API contributor
  I want to be able to update a MAGAZINE ISSUE
  So I can add missing information or fix incorrect data

  @RULE_MCA-5779
  Rule: Requests to update a MAGAZINE ISSUE are accepted when the provided data is valid

    @TEST_MCA-5780 @implemented
    Scenario: Updating a MAGAZINE ISSUE with valid data
      Given there exists a "MAGAZINE ISSUE" "sport auto 2_2026"
      When the user updates the node "sport auto 2_2026" with the following data
        | key                    | value          |
        | title                  | Sieger-Typen_2 |
        | consecutive_number     |                |
        | issue_number           | 13             |
        | issue_year             | 2027           |
        | release_date           | 2025-10-01_2   |
        | single_copy_price      | 7.4            |
        | single_copy_price_unit | GBP            |
        | pages                  | 150            |
      Then the request should be confirmed with status code 200
