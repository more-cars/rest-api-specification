@REQ_MCA-2714
Feature: Create MAGAZINE ISSUE Node
  As an API contributor
  I want to be able to create MAGAZINE ISSUES
  So I can fill gaps in the database

  @RULE_MCA-2725
  Rule: Read-only properties cannot be overridden by the user when creating a MAGAZINE ISSUE

    @TEST_MCA-2726 @implemented
    Scenario: Expecting read-only properties to be ignored when creating a MAGAZINE ISSUE
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
        | id                     | 1234         | number   |
        | created_at             | 2025-01-01   | string   |
        | updated_at             | 2025-01-01   | string   |
      Then the response should contain an ID
      And the response should contain the following keys
        | key        |
        | created_at |
        | updated_at |
      But the response should NOT contain the ID 1234
      And the response should NOT contain the following properties
        | key        | value      | datatype |
        | created_at | 2025-01-01 | string   |
        | updated_at | 2025-01-01 | string   |
