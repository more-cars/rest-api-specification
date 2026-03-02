@REQ_MCA-2714
Feature: Create MAGAZINE ISSUE Node
  As an API contributor
  I want to be able to create MAGAZINE ISSUES
  So I can fill gaps in the database

  @RULE_MCA-2715
  Rule: Requests to create a MAGAZINE ISSUE are accepted when the provided data is valid

    @TEST_MCA-2716 @implemented
    Scenario: Creating a MAGAZINE ISSUE with valid data
      When the user creates a "MAGAZINE ISSUE" "Sieger-Typen" with the following data
        | key                    | value        | datatype |
        | title                  | Sieger-Typen | string   |
        | consecutive_number     |              | number   |
        | issue_number           | 11           | number   |
        | issue_year             | 2025         | number   |
        | release_date           | 2025-10-01   | string   |
        | single_copy_price      | 5.4          | number   |
        | single_copy_price_unit | €            | string   |
        | pages                  | 148          | number   |
      Then the request should be confirmed with status code 201
      And the response should return the "MAGAZINE ISSUE" "Sieger-Typen"
