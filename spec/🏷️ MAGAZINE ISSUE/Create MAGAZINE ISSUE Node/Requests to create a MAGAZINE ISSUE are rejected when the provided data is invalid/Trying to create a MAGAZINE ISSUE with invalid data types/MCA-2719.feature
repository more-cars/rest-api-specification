@REQ_MCA-2714
Feature: Create MAGAZINE ISSUE Node
  As an API contributor
  I want to be able to create MAGAZINE ISSUES
  So I can fill gaps in the database

  @RULE_MCA-2717
  Rule: Requests to create a MAGAZINE ISSUE are rejected when the provided data is invalid

    @TEST_MCA-2719 @implemented
    Scenario: Trying to create a MAGAZINE ISSUE with invalid data types
      When the user tries to create a "MAGAZINE ISSUE" "Sieger-Typen" with the following data
        | key                    | value        | datatype |
        | title                  | Sieger-Typen | boolean  |
        | consecutive_number     |              | boolean  |
        | issue_number           | 11           | boolean  |
        | issue_year             | 2025         | boolean  |
        | release_date           | 2025-10-01   | boolean  |
        | single_copy_price      | 5.4          | boolean  |
        | single_copy_price_unit | €            | boolean  |
        | pages                  | 148          | boolean  |
      Then the request should be rejected with status code 400
