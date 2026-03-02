@REQ_MCA-2714
Feature: Create MAGAZINE ISSUE Node
  As an API contributor
  I want to be able to create MAGAZINE ISSUES
  So I can fill gaps in the database

  @RULE_MCA-2720
  Rule: The response contains all specified properties when creating a MAGAZINE ISSUE

    @TEST_MCA-2721 @implemented
    Scenario: Expecting all properties to be returned when creating a MAGAZINE ISSUE
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
      Then the response should contain the following properties
        | key                    | value        | datatype |
        | title                  | Sieger-Typen | string   |
        | consecutive_number     |              | number   |
        | issue_number           | 11           | number   |
        | issue_year             | 2025         | number   |
        | release_date           | 2025-10-01   | string   |
        | single_copy_price      | 5.4          | number   |
        | single_copy_price_unit | €            | string   |
        | pages                  | 148          | number   |
